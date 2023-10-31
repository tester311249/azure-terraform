module "az-rg-test" {
  source                      = "../"
  location                    = var.location
  resourcegroupname           = var.resourcegroupname
  subscription_id             = var.subscription_id
  tenant_id                   = var.tenant_id
}
