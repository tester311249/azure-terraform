variable "adf_name" {
  type        = string
  description = "ADF Name"
  default     = "adf-name"
}

variable "location" {
  type        = string
  default     = "uksouth"
  description = "Specify a location"
}

variable "resourcegroupname" {
  type        = string
  default     = "az-developer-experience-rg"
  description = "Name of the new resource group to be created"

}

variable "adf_repository_name" {
  type        = string
  description = "ADF Repo Name"
  default     = "developer experience"
}

variable "devops_project_name" {
  type        = string
  description = "Devops Project Name"
  default     = "Developer Experience"
}

variable "root_folder" {
  type        = string
  description = "ADF Root Folder"
  default     = "Data Factory"
}

variable "managed_virtual_network_enabled" {
  type        = bool
  description = "managed_virtual_network_enabled"
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default = {
  }
}

variable "is_dev" {
         type        = bool
         default     = "false"
         description = "Specify if this is a dev environment"
         ## Currently set this to false for dev as service principal does not have devops license and cannot manage repo
}