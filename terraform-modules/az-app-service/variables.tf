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

variable "app_service_name" {
  type        = string
  default     = "asp-name"
  description = "App Service Name"
}

variable "app_service_plan_id" {
  type        = string
  default     = "/subscriptions/Subscriptin-Id/resourcegroups/Terraform-dev-rg/providers/Microsoft.Web/serverfarms/test-app-service-plan"
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

variable "virtual_applications" {
  type        = any
  description = "Virtual Application/Path configurations"
  default     = []
}

variable "app_settings" {
  type        = any
  description = "App Settings for Application"
  default     = {}
}

variable "connection_strings" {
  type = list(object({
    name  = string
    type  = string
    value = string
  }))
  description = "Connection string for Application"
  default     = []
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

variable "ip_restrictions" {
  type    = map(any)
  default = {}
  description = "Map of allowed IP ranges in the format label=CIDR; See locals.tf"
}

variable "enable_imperva_waf_allow_list" {
  type        = bool
  default     = false
  description = "Allows the addition of a predefined list of Imperava cloud WAF IP Ranges as per https://docs.imperva.com/en-US/howto/c85245b7; Usable for external apps only"
}

variable "use_32_bit_worker" {
  type        = bool
  default     = true
  description = "Use 32 bit worker true or false"
}

variable "cors_allowed_origins" {
  type        = list(any)
  default     = []
  description = "List of allowed CORS origins for the App Service"
}