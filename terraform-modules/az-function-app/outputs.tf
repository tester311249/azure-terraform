
output "id" {
  description = "ID of the created Function App"
  value       = azurerm_windows_function_app.fun_app_windows.id
}

output "principal_id" {
  description = "Principal id output of the Function App"
  value       = azurerm_windows_function_app.fun_app_windows.identity[0].principal_id
}