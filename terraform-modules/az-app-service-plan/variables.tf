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

variable "aspname" {
  type        = string
  default     = "module-asp"
  description = "Name of App Service Plan"
}

variable "os_type" {
  type        = string
  default     = "Windows"
  description = "Kind of App Service Plan OS"
}

variable "sku_name" {
  type        = string
  default     = "B1"
  description = "SKU block for ASP"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be merged with the default tag map"
  default = {
  }
}
