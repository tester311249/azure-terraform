resource "azurerm_logic_app_standard" "logic_app_std" {
   name                       = var.logic_app_name
   location                   = var.location
   resource_group_name        = var.resource_group_name
   app_service_plan_id        = var.app_service_plan_id
   storage_account_name       = var.storage_account_name
   storage_account_access_key = var.stg_primary_access_key
   virtual_network_subnet_id  = var.integration_subnet_id

   identity {
      type                    = "SystemAssigned"
   }

   site_config {
      vnet_route_all_enabled  = true
   }

	app_settings= var.app_settings

   tags                       = var.tags
}
