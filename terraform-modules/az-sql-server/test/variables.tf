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
  default     = "uksouth"
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
  default     = ""
}

variable "administrator_login" {
  type        = string
  description = "SQL Administrator Username"
  default     = "datahub_lite-admin"
}

variable "administrator_login_password" {
  type        = string
  description = "Administrator Login Password"
  default     = "Aisb76545677888&oi"
}

variable "login_username" {
  type        = string
  description = "Azure AD Login UserName for SQL"
  default     = "tfmoduletest"
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
  description = "Version of the SQL Server in decimal notation e.g. 12.0"
}

#######################
# Key Vault variables #
#######################

variable "kv_full_object_id" {
  type        = string
  description = "The object ID of a user, service principal or security group in the Azure Active Directory tenant for FULL access to the Azure Key Vault"
  default     = ""
}

variable "kv_read_object_id" {
  type        = string
  description = "The object ID of a user, service principal or security group in the Azure Active Directory tenant for READ access to the Azure Key Vault"
  default     = ""
}

variable "kv_vm_deployment" {
  type        = string
  description = "Allow Azure Virtual Machines to retrieve certificates stored as secrets from the Azure Key Vault"
  default     = "true"
}

variable "kv_disk_encryption" {
  type        = string
  description = "Allow Azure Disk Encryption to retrieve secrets from the Azure Key Vault and unwrap keys"
  default     = "true"
}

variable "kv_template_deployment" {
  type        = string
  description = "Allow Azure Resource Manager to retrieve secrets from the Azure Key Vault"
  default     = "true"
}

variable "kv_key_permissions_full" {
  type        = list(string)
  description = "List of full key permissions, must be one or more from the following: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify and wrapKey"
  default = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge",
  "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey"]
}

variable "kv_secret_permissions_full" {
  type        = list(string)
  description = "List of full secret permissions, must be one or more from the following: backup, delete, get, list, purge, recover, restore and set"
  default     = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
}

variable "kv_certificate_permissions_full" {
  type        = list(string)
  description = "List of full certificate permissions, must be one or more from the following: backup, create, delete, deleteissuers, get, getissuers, import, list, listissuers, managecontacts, manageissuers, purge, recover, restore, setissuers and update"
  default = ["Create", "Delete", "DeleteIssuers", "Get", "GetIssuers", "Import", "List", "ListIssuers",
  "ManageContacts", "ManageIssuers", "Purge", "Recover", "SetIssuers", "Update", "Backup", "Restore"]
}

variable "kv_storage_permissions_full" {
  type        = list(string)
  description = "List of full storage permissions, must be one or more from the following: backup, delete, deletesas, get, getsas, list, listsas, purge, recover, regeneratekey, restore, set, setsas and update"
  default     = ["Backup", "Delete", "DeleteSAS", "Get", "GetSAS", "List", "ListSAS", "Purge", "Recover", "RegenerateKey", "Restore", "Set", "SetSAS", "Update"]
}

variable "kv_key_permissions_read" {
  type        = list(string)
  description = "List of read key permissions, must be one or more from the following: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify and wrapKey"
  default     = ["Get", "List"]
}

variable "kv_secret_permissions_read" {
  type        = list(string)
  description = "List of full secret permissions, must be one or more from the following: backup, delete, get, list, purge, recover, restore and set"
  default     = ["Get", "List"]
}

variable "kv_certificate_permissions_read" {
  type        = list(string)
  description = "List of full certificate permissions, must be one or more from the following: backup, create, delete, deleteissuers, get, getissuers, import, list, listissuers, managecontacts, manageissuers, purge, recover, restore, setissuers and update"
  default     = ["Get", "GetIssuers", "List", "ListIssuers"]
}

variable "kv_storage_permissions_read" {
  type        = list(string)
  description = "List of read storage permissions, must be one or more from the following: backup, delete, deletesas, get, getsas, list, listsas, purge, recover, regeneratekey, restore, set, setsas and update"
  default     = ["Get", "GetSAS", "List", "ListSAS"]
}

variable "kv_secrets" {
  type = map(object({
    value = string
  }))
  description = "Define Azure Key Vault secrets"
  default     = {}
}

variable "name" {
  type        = string
  description = "The name of the Azure Key Vault e.g. <division>-kv-<env>-guid"
}

