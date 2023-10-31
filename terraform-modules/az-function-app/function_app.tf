resource "azurerm_windows_function_app" "fun_app_windows" {
  name                = var.function_app_name
  location            = var.location
  resource_group_name = var.resourcegroupname
  service_plan_id     = var.app_service_plan_id
  https_only          = true
  virtual_network_subnet_id = var.virtual_network_subnet_id == "" ? null : var.virtual_network_subnet_id

  app_settings        = var.app_settings
  tags                = var.tags

  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
 


  identity {
    type = "SystemAssigned"
  }

  site_config {
      application_stack {
          dotnet_version              = lookup(local.site_config.application_stack, "dotnet_version", null)
          use_dotnet_isolated_runtime = lookup(local.site_config.application_stack, "use_dotnet_isolated_runtime", null)

          java_version            = lookup(local.site_config.application_stack, "java_version", null)
          node_version            = lookup(local.site_config.application_stack, "node_version", null)
          powershell_core_version = lookup(local.site_config.application_stack, "powershell_core_version", null)

          use_custom_runtime = lookup(local.site_config.application_stack, "use_custom_runtime", null)
        
      }
     application_insights_connection_string = lookup(local.site_config, "application_insights_connection_string", null)
     application_insights_key               = lookup(local.site_config, "application_insights_key", false)
     http2_enabled                          = lookup(local.site_config, "http2_enabled", null)
     use_32_bit_worker                      = lookup(local.site_config, "use_32_bit_worker", null)
  }

    lifecycle {
    ignore_changes = [
      app_settings,
      connection_string
    ]
  }

}