# Create Azure Resource Group
module "az-rg-test" {
  source            = "../../az-resource-groups"
  location          = var.location
  resourcegroupname = var.resourcegroupname
  subscription_id   = var.subscription_id
  tenant_id         = var.tenant_id
  tags              = module.tags-dev.tags
}

# Create Azure Key Vault Entry to Store SQL DB Admin Password and then later consume it
module "keyvault" {
  source              = "../../az-key-vault"
  name                = var.name
  location            = module.az-rg-test.resource-group-location
  resource_group_name = module.az-rg-test.resource-group-name

  enabled_for_deployment          = var.kv_vm_deployment
  enabled_for_disk_encryption     = var.kv_disk_encryption
  enabled_for_template_deployment = var.kv_template_deployment

  tags = module.tags-dev.tags

  policies = {
    full = {
      tenant_id               = var.tenant_id
      object_id               = var.kv_full_object_id
      key_permissions         = var.kv_key_permissions_full
      secret_permissions      = var.kv_secret_permissions_full
      certificate_permissions = var.kv_certificate_permissions_full
      storage_permissions     = var.kv_storage_permissions_full
    }
    read = {
      tenant_id               = var.tenant_id
      object_id               = var.kv_read_object_id
      key_permissions         = var.kv_key_permissions_read
      secret_permissions      = var.kv_secret_permissions_read
      certificate_permissions = var.kv_certificate_permissions_read
      storage_permissions     = var.kv_storage_permissions_read
    }
  }

  secrets = var.kv_secrets
}
# Create SQl Server
module "consume_sql" {
  source        = "../"
  sqlservername = var.sqlservername
  # firewall_rules               = local.firewall_rules
  location                     = module.az-rg-test.resource-group-location
  resourcegroupname            = module.az-rg-test.resource-group-name
  tenant_id                    = var.tenant_id
  object_id                    = var.object_id
  administrator_login          = var.administrator_login
  administrator_login_password = local.admin_pwd
  login_username               = var.login_username
  subscription_id              = var.subscription_id
  server_version               = var.server_version
  tags                         = module.tags-dev.tags
  depends_on = [
    module.az-rg-test
  ]
}

# Create Tags
module "tags-dev" {
  source = "../../az-tags"
  tags = {
    bu             = "101701"
    AppID          = ""
    app_name       = "DataLite"
    environment    = "D"
    Project        = "DataLite"
    department     = "GallagherRe"
    _DeployedUsing = "Terraform"
    _repo          = ""
    app_group      = "DataLite"
    division       = "GGBRe"
  }

}

