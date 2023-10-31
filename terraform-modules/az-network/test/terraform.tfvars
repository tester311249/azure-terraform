vnet_address_space = ["10.239.152.0/23"]
location           = "uksouth"
subnets = {
  mgnt_subnet = {
    subnet_name           = "snet-management"
    subnet_address_prefix = ["10.239.153.160/29"]

    delegation = {
      name = "testdelegation"
      service_delegation = {
        name    = "Microsoft.ContainerInstance/containerGroups"
        actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
      }
    }
  }
  pvt_subnet = {
    subnet_name           = "snet-pvt"
    subnet_address_prefix = ["10.239.153.168/29"]
    service_endpoints     = ["Microsoft.Storage"]
  }
}
resource_group_name = "network-rg"
subscription_id     = ""
tags                = {}
tenant_id           = ""
firewall_service_endpoints = [
  "Microsoft.AzureActiveDirectory",
  "Microsoft.AzureCosmosDB",
  "Microsoft.EventHub",
  "Microsoft.KeyVault",
  "Microsoft.ServiceBus",
  "Microsoft.Sql",
  "Microsoft.Storage"
]
firewall_subnet_address_prefix = ""
gateway_service_endpoints      = []
gateway_subnet_address_prefix  = ""
vnetwork_name                  = "gallagherre-emea-dev-vnet"
