variable "resourcegroupname" {
  type        = string
  default     = "az-modules-test"
  description = "Name of the new resource group to be created"
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "Specify a location"
}

variable "app_service_name" {
  type        = string
  default     = "asp-name"
  description = "App Service Name"
}

variable "app_service_plan_id" {
  type        = string
  default     = "/subscriptions/Subscription-ID/resourcegroups/Terraform-share-rg/providers/Microsoft.Web/serverfarms/test-app-service-plan"
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

variable "site_config" {
  type        = any
  description = "Site config for App Service. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service.html#site_config. IP restriction attribute is no more managed in this block."
  default     = {}
}