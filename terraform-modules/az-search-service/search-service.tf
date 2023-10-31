

resource "random_string" "ssname" {
  length = 10
  upper  = false
  special  = false
  min_numeric = 4
}


resource "azurerm_search_service" "searchservice" {
  name                = "${var.name}-${random_string.ssname.result}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku  = var.sku_name
  tags      = var.tags
  public_network_access_enabled = var.public_network_access
  identity {
    type = "SystemAssigned"
  }
}