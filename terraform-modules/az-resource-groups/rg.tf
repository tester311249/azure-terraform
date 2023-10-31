resource "azurerm_resource_group" "az_resource_group" {
  name     = var.resourcegroupname
  location = var.location
  tags     = var.tags
  # lifecycle {
  #   ignore_changes = [tags]
  # }
}

