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
