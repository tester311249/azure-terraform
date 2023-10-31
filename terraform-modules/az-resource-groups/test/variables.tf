variable "resourcegroupname" {
  type        = string
  default     = "az-platform-test-"
  description = "Name of the new resource group to be created"

}

variable "location" {
  type        = string
  default     = "uksouth"
  description = "Specify a location"
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription Id equivalent to AWS Account"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant Id"
}
