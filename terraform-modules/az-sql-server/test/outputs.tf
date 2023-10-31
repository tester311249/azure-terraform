
output "sqlservertest" {
  value       = module.consume_sql.sqlserver
  description = "The SQL Server created"
}
