resource "azurerm_mssql_server" "sql_server_create" {
  name                         = var.sqlservername
  resource_group_name          = var.resourcegroupname
  location                     = var.location
  version                      = var.server_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  connection_policy            = var.connection_policy
  azuread_administrator {
    login_username = var.login_username
    object_id      = var.object_id
    tenant_id      = var.tenant_id
  }
  tags = var.tags

  # lifecycle {
  #   ignore_changes = [tags]
  # }

  identity {
    type = "SystemAssigned"
  }
}


