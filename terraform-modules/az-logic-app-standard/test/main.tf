data "azurerm_service_plan" "logic_app_appsvcplan" {
    name                = var.importappsvcplan
    resource_group_name = var.appsvcplanrg
}

data "azurerm_storage_account" "logic_app_stg_acct" {
  name                = var.storage_account_name
  resource_group_name = var.appsvcplanrg
}

data "azurerm_virtual_network" "integration_vnet" {
      name                = var.vnet_name
      resource_group_name = var.vnet_rg

}

data "azurerm_subnet" "integration_subnet" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.integration_vnet.name
  resource_group_name  = data.azurerm_virtual_network.integration_vnet.resource_group_name
}


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
    Environment    = "D"
    Project        = "DataLite"
    department     = "test"
    _DeployedUsing = "Terraform"
    _repo          = ""
    app_group      = "DataLite"
    division       = "test"
  }

}

module "Logic_App_Standard" {
    source                 = "../"
    logic_app_name         = var.logic_app_name
    location               = module.az-rg-datalite.resource-group-location
    resource_group_name    = module.az-rg-datalite.resource-group-name
    app_service_plan_id    = data.azurerm_service_plan.logic_app_appsvcplan.id
    storage_account_name   = var.storage_account_name
    stg_primary_access_key = data.azurerm_storage_account.logic_app_stg_acct.primary_access_key
    integration_subnet_id  = data.azurerm_subnet.integration_subnet.id
}
