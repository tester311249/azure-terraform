##################
# resource group #
##################

## Block to create resource group
module "az-rg-datalite" {
  source            = "../../az-resource-groups"
  location          = var.location
  resourcegroupname = var.resource_group_name
  subscription_id   = var.subscription_id
  tenant_id         = var.tenant_id
  tags              = module.tags-dev.tags
}

# Create Tags
module "tags-dev" {
  source = "../../az-tags"
  tags = {
    bu             = "1"
    AppID          = ""
    app_name       = "DataLite"
    environment    = "dev"
    Project        = "DataLite"
    department     = "test"
    _DeployedUsing = "Terraform"
    _repo          = ""
    app_group      = "DataLite"
    division       = "test"
  }

}

#############
# key vault #
#############

module "keyvault" {
  source                          = "../"
  name                            = var.name
  location                        = module.az-rg-datalite.resource-group-location
  resource_group_name             = module.az-rg-datalite.resource-group-name
  enabled_for_deployment          = var.kv_vm_deployment
  enabled_for_disk_encryption     = var.kv_disk_encryption
  enabled_for_template_deployment = var.kv_template_deployment
  tags                            = module.tags-dev.tags
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
