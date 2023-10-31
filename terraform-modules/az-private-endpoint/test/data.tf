# Import Network Resources

data "azurerm_virtual_network" "private_endpoint_vnet" {
  name                = var.private_endpoint_vnet_name
  resource_group_name = var.private_endpoint_vnet_rg

}

#  Import Subnets
data "azurerm_subnet" "private_endpoint_subnet" {
  name                 = var.private_endpoint_subnet_name
  virtual_network_name = data.azurerm_virtual_network.private_endpoint_vnet.name
  resource_group_name  = data.azurerm_virtual_network.private_endpoint_vnet.resource_group_name
}

# Import DNS Zone from Hub Network. Provider will be different for this (Hub Network Provider)
# Implement looping to get the
data "azurerm_private_dns_zone" "dns_zone" {
  provider            = azurerm.app-hub
  name                = var.private_dns_zone
  resource_group_name = var.dns_rg
}
