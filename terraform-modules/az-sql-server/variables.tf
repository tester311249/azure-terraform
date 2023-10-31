variable "sqlservername" {
  type        = string
  default     = "az-platform-test"
  description = "Name of the SQL Server"

}


variable "resourcegroupname" {
  type        = string
  default     = "az-platform-test-"
  description = "Name of the new resource group to be created"

}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "Specify a location"
}

# variable "firewall_rules" {
#   type        = map(any)
#   description = "Provide firewall rule sets to be configured"
# }

# variable "storage_account_tf_state"{
# 	type = string
# 	description = "Azure Storage Account to store terraform state file"
# }

variable "tf_rg" {
  type        = string
  description = "Terraform State Resource Group Name"
  default     = "Terraform-shared-emea-dev-rg"
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription Id equivalent to AWS Account"
}

# variable "az_storage_container_tf_state"{
# 	type=string
# 	description="Terraform State Storage Container"
# }

# To be replaced with key-vault
# variable "storage_access_keys"{
# 	type=string
# 	description="Access Keys for Azure Storage Account"
# }

variable "object_id" {
  type        = string
  description = "Object Id of the Azure Principal/User creating SQL Server"
}

variable "administrator_login" {
  type        = string
  description = "SQL Administrator Username"
  default     = "datahub_lite-admin"
}

variable "administrator_login_password" {
  type        = string
  description = "Administrator Login Password"
  sensitive   = true
}

variable "login_username" {
  type        = string
  description = "Azure AD Login UserName for SQL"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant Id"
}


variable "tags" {
  type        = map(string)
  description = "Tags to be merged with the default tag map"
  default = {
  }
}

variable "server_version" {
  type        = string
  description = "Version of the SQL Server"
}

variable "connection_policy" {
  type        = string
  description = "Version of the SQL Server"
  default = "Default"
}
