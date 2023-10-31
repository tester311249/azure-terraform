# Import Network resources as creation of Vnet is restricted
data "azurerm_virtual_network" "vnet" {
  name                = var.vnetwork_name
  resource_group_name = var.resource_group_name

}


resource "azurerm_subnet" "snet" {
  for_each                                      = var.subnets
  name                                          = each.value.subnet_name
  resource_group_name                           = var.resource_group_name
  virtual_network_name                          = data.azurerm_virtual_network.vnet.name
  address_prefixes                              = each.value.subnet_address_prefix
  service_endpoints                             = lookup(each.value, "service_endpoints", [])
  service_endpoint_policy_ids                   = lookup(each.value, "service_endpoint_policy_ids", null)
  private_endpoint_network_policies_enabled     = lookup(each.value, "private_endpoint_network_policies_enabled", null)
  private_link_service_network_policies_enabled = lookup(each.value, "private_link_service_network_policies_enabled", null)

  dynamic "delegation" {
    for_each = lookup(each.value, "delegation", {}) != {} ? [1] : []
    content {
      name = lookup(each.value.delegation, "name", null)
      service_delegation {
        name    = lookup(each.value.delegation.service_delegation, "name", null)
        actions = lookup(each.value.delegation.service_delegation, "actions", null)
      }
    }
  }
}

resource "azurerm_subnet" "fw-snet" {
  count                = var.firewall_subnet_address_prefix != null ? 1 : 0
  name                 = "AzureFirewallSubnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  address_prefixes     = var.firewall_subnet_address_prefix #[cidrsubnet(element(var.vnet_address_space, 0), 10, 0)]
  service_endpoints    = var.firewall_service_endpoints
}

resource "azurerm_subnet" "gw_snet" {
  count                = var.gateway_subnet_address_prefix != null ? 1 : 0
  name                 = "GatewaySubnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  address_prefixes     = var.gateway_subnet_address_prefix #[cidrsubnet(element(var.vnet_address_space, 0), 8, 1)]
  service_endpoints    = var.gateway_service_endpoints
}

#-----------------------------------------------
# Network security group - Default is "false"
#-----------------------------------------------
resource "azurerm_network_security_group" "nsg" {
  for_each            = var.subnets
  name                = lower("nsg_${each.key}_in")
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
  dynamic "security_rule" {
    for_each = concat(lookup(each.value, "nsg_inbound_rules", []), lookup(each.value, "nsg_outbound_rules", []))
    content {
      name                       = security_rule.value[0] == "" ? "Default_Rule" : security_rule.value[0]
      priority                   = security_rule.value[1]
      direction                  = security_rule.value[2] == "" ? "Inbound" : security_rule.value[2]
      access                     = security_rule.value[3] == "" ? "Allow" : security_rule.value[3]
      protocol                   = security_rule.value[4] == "" ? "Tcp" : security_rule.value[4]
      source_port_range          = "*"
      destination_port_range     = security_rule.value[5] == "" ? "*" : security_rule.value[5]
      source_address_prefix      = security_rule.value[6] == "" ? element(each.value.subnet_address_prefix, 0) : security_rule.value[6]
      destination_address_prefix = security_rule.value[7] == "" ? element(each.value.subnet_address_prefix, 0) : security_rule.value[7]
      description                = "${security_rule.value[2]}_Port_${security_rule.value[5]}"
    }
  }
}

resource "azurerm_subnet_network_security_group_association" "nsg-assoc" {
  for_each                  = var.subnets
  subnet_id                 = azurerm_subnet.snet[each.key].id
  network_security_group_id = azurerm_network_security_group.nsg[each.key].id
}
