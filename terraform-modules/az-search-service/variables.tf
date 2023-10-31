variable "resource_group_name" {
  type        = string
  description = "The name of Resource Group to Create"
  default     = "az-platform-test"
}

variable "location" {
  type        = string
  description = "Define the region the Azure search service should be created, you should use the Resource Group location"
  default     = "uksouth"
}


variable "name" {
  type        = string
  description = "The name of the Azure search service t e.g. <division>-ss-<env>-guid"
}

variable "sku_name" {
  type        = string
  description = "Select Standard or Premium SKU"
  default     = "standard"
}

variable "public_network_access" {
  type        = bool
  description = "Public network access"
  default     = "true"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}