variable "logic_app_name" {
  type        = string
  default     = "logic-app"
  description = "Name of the logic app"
}

variable "location" {
  type        = string
  default     = "uksouth"
  description = "Location of the Logic App"
}

variable "resource_group_name" {
  type        = string
  default     = "emea-dev-rg"
  description = "Name of the resource group in which Logic App resides"
}


variable "storage_account_name" {
  type        = string
  default     = "datadevkepzwfr15y"
  description = "Name of the storage account used by Logic App"
}



variable "importappsvcplan" {
  type        = string
  default     = "appsvcplan-dev-eriqlthuy3"
  description = "Name of the app service plan to import"
}

variable "appsvcplanrg" {
  type        = string
  default     = "coreservicesappserviceplan-main-emea-dev-rg"
  description = "Name of the app service plan resource group"
}

variable "vnet_name" {
  type        = string
  default     = "dev-vnet"
  description = "Name of the vnet used for integration"
}

variable "vnet_rg" {
  type        = string
  default     = "network-rg"
  description = "Name of the resource group in which integration vnet resides"
}

variable "subnet_name" {
  type        = string
  default     = "ASP-Subnet"
  description = "Name of the subnet used for vnet integration"
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
	default=""
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
	default=""
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
