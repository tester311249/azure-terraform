resource "azurerm_windows_web_app" "app_service_windows" {
  for_each = toset(lower(var.os_type) == "windows" ? ["enabled"] : [])

  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resourcegroupname
  service_plan_id     = var.app_service_plan_id
  https_only          = true
  site_config {
    http2_enabled     = true
    use_32_bit_worker = var.use_32_bit_worker
    dynamic "virtual_application" {
      for_each = {
        for index, virtualapp in var.virtual_applications :
        virtualapp.physical_path => virtualapp
      }
      content {
        physical_path = virtual_application.value["physical_path"]
        preload       = virtual_application.value["preload"]
        virtual_path  = virtual_application.value["virtual_path"]
      }
    }
    vnet_route_all_enabled = var.vnet_route_all_enabled

    dynamic "ip_restriction" {
      for_each = local.ip_restrictions_allow

      content {
        name       = ip_restriction.key
        action     = "Allow"
        ip_address = ip_restriction.value
      }
    }

    dynamic "cors" {
      for_each = length(var.cors_allowed_origins) > 0 ? [1] : []

      content {
        allowed_origins = var.cors_allowed_origins
      }
    }
  }

  virtual_network_subnet_id = var.virtual_network_subnet_id == "" ? null : var.virtual_network_subnet_id

  app_settings = var.app_settings

  dynamic "connection_string" {
    for_each = var.connection_strings
    content {
      name  = connection_string.value["name"]
      type  = connection_string.value["type"]
      value = connection_string.value["value"]
    }
  }
  tags = var.tags

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_linux_web_app" "app_service_linux" {
  for_each = toset(lower(var.os_type) == "linux" ? ["enabled"] : [])

  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resourcegroupname
  service_plan_id     = var.app_service_plan_id
  https_only          = true
  site_config {
    http2_enabled          = true
    vnet_route_all_enabled = var.vnet_route_all_enabled

    dynamic "ip_restriction" {
      for_each = local.ip_restrictions_allow

      content {
        name       = ip_restriction.key
        action     = "Allow"
        ip_address = ip_restriction.value
      }
    }

    dynamic "cors" {
      for_each = length(var.cors_allowed_origins) > 0 ? [1] : []

      content {
        allowed_origins = var.cors_allowed_origins
      }
    }
  }

  virtual_network_subnet_id = var.virtual_network_subnet_id == "" ? null : var.virtual_network_subnet_id

  app_settings = var.app_settings
  tags         = var.tags

  identity {
    type = "SystemAssigned"
  }
}