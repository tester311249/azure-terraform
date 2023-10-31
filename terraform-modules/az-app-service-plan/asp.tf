resource "azurerm_service_plan" "az_app_service_plan" {
  name                = var.aspname
  location            = var.location
  resource_group_name = var.resourcegroupname
  os_type             = var.os_type

  sku_name            = var.sku_name

  tags                = var.tags

  lifecycle {
    ignore_changes = [tags]
  }
}