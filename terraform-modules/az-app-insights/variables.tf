variable "resource_group_name" {
  type        = string
  default     = "az-modules-test-"
  description = "Name of the new resource group to be created"
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "Specify a location"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be merged with the default tag map"
  default = {
  }
}

variable "application_type" {
  type        = string
  default     = "web"
  description = "Type of app insights to create"
}

variable "app_insights_name" {
  type        = string
  default     = "test-ai"
  description = "Type of app insights to create"
}