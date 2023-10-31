resource "azurerm_mssql_database" "gateway" {
  name      = var.name
  server_id = var.server_id
  sku_name  = var.sku_name

  min_capacity = local.min_capacity

  tags = var.tags
}