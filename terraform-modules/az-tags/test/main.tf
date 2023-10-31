resource "azurerm_resource_group" "example" {
  name     = "database-rg"
  location = "West Europe"
}


resource "azurerm_mssql_server" "example" {
  name                         = "mssqlserver"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "thisIsKat11"
  minimum_tls_version          = "1.2"
  tags                         = module.tags-dev.tags

}

module "tags-dev" {
  source = "../"
  tags = {
    bu          = "9"
    environment = "dev"
    department  = "test"
    division    = "test"
    app_name    = "grumpy"
    app_group = "grumpy"
  }
}