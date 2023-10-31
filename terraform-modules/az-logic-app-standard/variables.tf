variable "logic_app_name" {
  type        = string
  description = "Name of the logic app"
}

variable "location" {
  type        = string
  description = "Location of the Logic App"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group in which Logic App resides"
}

variable "app_service_plan_id" {
  type        = string
  description = "ID of the Workflow App Service Plan"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account used by Logic App"
}

variable "stg_primary_access_key" {
  type        = string
  description = "Primary Access key of the storage account used by Logic App"
}

variable "integration_subnet_id" {
  type        = string
  description = "ID of the Subnet used for Vnet Integration"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "app_settings" {
  description = "Logic App App Settings"
  type        = map(string)
  default     = {
		WEBSITE_CONTENTOVERVNET="1"
	}
}