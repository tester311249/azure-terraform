administrator_login          = "datahub_lite-admin"
administrator_login_password = "Einsb8093726716&oi"
kv_certificate_permissions_full = [
  "Create",
  "Delete",
  "DeleteIssuers",
  "Get",
  "GetIssuers",
  "Import",
  "List",
  "ListIssuers",
  "ManageContacts",
  "ManageIssuers",
  "Purge",
  "Recover",
  "SetIssuers",
  "Update",
  "Backup",
  "Restore"
]
kv_certificate_permissions_read = [
  "Get",
  "GetIssuers",
  "List",
  "ListIssuers"
]
kv_disk_encryption = "true"
kv_full_object_id  = "bb6b0314-95e9-46a4-a2a2-b193fa6c6695"
kv_key_permissions_full = [
  "Backup",
  "Create",
  "Decrypt",
  "Delete",
  "Encrypt",
  "Get",
  "Import",
  "List",
  "Purge",
  "Recover",
  "Restore",
  "Sign",
  "UnwrapKey",
  "Update",
  "Verify",
  "WrapKey"
]
kv_key_permissions_read = [
  "Get",
  "List"
]
kv_read_object_id = "bb6b0314-95e9-46a4-a2a2-b193fa6c6695"
kv_secret_permissions_full = [
  "Backup",
  "Delete",
  "Get",
  "List",
  "Purge",
  "Recover",
  "Restore",
  "Set"
]
kv_secret_permissions_read = [
  "Get",
  "List"
]
kv_secrets = {
  sqldb = {
    value = "" # setting to "" will auto-generate the password
  }
}

kv_storage_permissions_full = [
  "Backup",
  "Delete",
  "DeleteSAS",
  "Get",
  "GetSAS",
  "List",
  "ListSAS",
  "Purge",
  "Recover",
  "RegenerateKey",
  "Restore",
  "Set",
  "SetSAS",
  "Update"
]
kv_storage_permissions_read = [
  "Get",
  "GetSAS",
  "List",
  "ListSAS"
]
kv_template_deployment = "true"
kv_vm_deployment       = "true"
location               = "uksouth"
login_username         = "tfmoduletest"
name                   = "test-module"
object_id              = "bb6b0314-95e9-46a4-a2a2-b193fa6c6695"
resourcegroupname      = "az-platform-test-"
server_version         = "12.0"
sqlservername          = "az-platform-test"
subscription_id        = ""
tags                   = {
      bu             = "101701"
    app_name       = "DataHub"
    environment    = "Dev"
    Project        = "DataHub"
    department     = "GallagherRe"
    _DeployedUsing = "Terraform"
    _repo          = "https://dev.azure.com/ajgre/DataHub"
    app_group      = "DataHub"
    division       = "GGBRe"
    PointOfContact = "gts.nto.requests.ajg.com"
}
tenant_id              = ""
tf_rg                  = "Terraform-shared-emea-dev-rg"
