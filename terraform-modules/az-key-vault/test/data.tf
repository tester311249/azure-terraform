data "azurerm_resource_group" "existing_resource_group" {
  count = length(var.azurerm_resource_group_name) >= 1 ? 1 : 0
  name  = var.azurerm_resource_group_name[0]
}
