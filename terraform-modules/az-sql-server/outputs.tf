
output "sqlserver" {
  value       = azurerm_mssql_server.sql_server_create.id
  description = "Id of SQL Server created"
}

output "sqlservername" {
  value       = azurerm_mssql_server.sql_server_create.name
  description = "Name of SQL Server created"
}

 output "sql_server_fqdn" {
    description = "Fully Qualified Domain Name (FQDN) of the Azure SQL Database created."
    value = azurerm_mssql_server.sql_server_create.fully_qualified_domain_name
 }

 output "connection_string" {
  description = "Connection string for the Azure SQL Database created."
  value = "Server=tcp:${azurerm_mssql_server.sql_server_create.fully_qualified_domain_name},1433;Authentication=Active Directory Integrated;Database="
}

output "administrator_login_password" {
  value = azurerm_mssql_server.sql_server_create.administrator_login_password
  sensitive = true
}

