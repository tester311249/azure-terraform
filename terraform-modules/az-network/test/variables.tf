variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
  default     = "az-platform-demo"
}

variable "vnet_address_space" {
  description = "The address space to be used for the Azure virtual network."
  default     = ["10.239.152.0/23"]
}

variable "location" {
  description = "Location where resource is to be created"

}

variable "subnets" {
  description = "For each subnet, create an object that contain fields"
  default     = {}
}


variable "gateway_subnet_address_prefix" {
  description = "The address prefix to use for the gateway subnet"
  default     = null
}

variable "firewall_subnet_address_prefix" {
  description = "The address prefix to use for the Firewall subnet"
  default     = null
}

variable "firewall_service_endpoints" {
  description = "Service endpoints to add to the firewall subnet"
  type        = list(string)
  default = [
    "Microsoft.AzureActiveDirectory",
    "Microsoft.AzureCosmosDB",
    "Microsoft.EventHub",
    "Microsoft.KeyVault",
    "Microsoft.ServiceBus",
    "Microsoft.Sql",
    "Microsoft.Storage",
  ]
}

variable "gateway_service_endpoints" {
  description = "Service endpoints to add to the Gateway subnet"
  type        = list(string)
  default     = []
}


variable "vnetwork_name" {
  type        = string
  description = "Existing Vnet name in Azure Resource Group"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
