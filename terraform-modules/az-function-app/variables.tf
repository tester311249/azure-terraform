variable "resourcegroupname" {
  type        = string
  default     = "az-modules-test-"
  description = "Name of the new resource group to be created"
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "Specify a location"
}

variable "function_app_name" {
  type        = string
  default     = "asp-name"
  description = "App Service Name"
}

variable "app_service_plan_id" {
  type        = string
  default     = "/subscriptions/Subscription-Id/resourcegroups/Terraform-shared-emea-dev-rg/providers/Microsoft.Web/serverfarms/test-app-service-plan"
  description = "App Service Plan ID"
}

variable "os_type" {
  type        = string
  default     = "Windows"
  description = "Kind of App Service OS"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be merged with the default tag map"
  default = {
  }
}

variable "storage_account_name" {
  type        = any
  description = "storage account name"
  default     = {}
}

variable "storage_account_access_key" {
  type        = any
  description = "storage account accesskey"
  default     = []
}

variable "app_settings" {
  type        = any
  description = "App Settings for Application"
  default     = {}
}

variable "virtual_network_subnet_id" {
  type        = string
  description = "[Optional] Virtual Network SubnetID for VNet integration"
  default     = ""
}

variable "vnet_route_all_enabled" {
  type        = bool
  default     = false
  description = "Should Vnet Outbound have NSG and UDR rules applied"
}

variable "site_config" {
  description = "Site config for Function App. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service.html#site_config. IP restriction attribute is not managed in this block."
  type        = any
  default     = {}
}