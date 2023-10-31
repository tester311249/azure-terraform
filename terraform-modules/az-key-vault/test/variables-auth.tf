##################
# Authentication #
##################

# azure authentication variables
variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}
#  Use the below mentioned variable 'azure_client_id' and 'azure_client_secret' in providers if required. Refer the following Terraform link for
# using providers https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
# variable "azure_client_id" {
#   type        = string
#   description = "Azure Client ID"
# }

# variable "azure_client_secret" {
#   type        = string
#   description = "Azure Client Secret"
# }

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}

variable "azurerm_resource_group_name" {
  type        = list(any)
  description = "Provide name of the existing resource group name"
  default     = [""]
}

variable "resource_group_name" {
  type        = string
  description = "The name of Resource Group to Create"
  default     = "az-platform-test"
}
