variable "private_endpoint_vnet_name" {
  type        = string
  description = "Vnet name to import to work with the Private Endpoint"
}

variable "private_endpoint_subnet_name" {
  type        = string
  description = "Subnet name to import to work with the Private Endpoint"
}

variable "private_dns_zone" {
  type        = string
  description = "Microsoft Private DNS Zones"
  default     = "privatelink.database.windows.net"
}

variable "private_endpoint_name" {
  type        = string
  description = "Name of the private endpoint"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Grouo where private endpoint will be created"
}

variable "location" {
  type        = string
  default     = "uksouth"
  description = "Specify a location"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant Id"
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription Id equivalent to AWS Account"
}


variable "hub_subscription_id" {
  type        = string
  description = "Azure Subscription Id equivalent to AWS Account"
}


variable "tags" {
  type        = map(string)
  description = "Tags to be merged with the default tag map"
  default = {
  }
}

variable "resource_id" {
  type        = string
  description = "Azure Resource Id for which private endpoint will be created"
  default     = ""
}

variable "subresource_names" {
  type        = list(string)
  description = "A list of subresource names which the Private Endpoint is able to connect to"
}

variable "dns_zone_ids" {
  type        = list(string)
  description = "DNS Zone Ids of DNS Zones"
  default     = []
}

variable "subnet_id" {
  type        = string
  description = "Subnet Id"
}

variable "dns_rg" {
  type        = string
  description = "Resource Grouo where dns zones are created"
}

variable "private_endpoint_vnet_rg" {
  type        = string
  description = "Resource Group where vnet located"
}
