locals {
  resource_group_name     = length(data.azurerm_resource_group.existing_resource_group.*.name) >= 1 ? data.azurerm_resource_group.existing_resource_group[0].name : null
  resource_group_location = length(data.azurerm_resource_group.existing_resource_group.*.name) >= 1 ? data.azurerm_resource_group.existing_resource_group[0].location : null
}
