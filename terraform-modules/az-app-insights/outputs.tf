
 output "connection_string" {
  description = "Connection string for the Azure App Insights."
  value = azurerm_application_insights.app_insights.connection_string
  sensitive = true
}

output "instrumentation_key" {
  description = "Instrumentation key of the associated Application Insights"
  value       =  azurerm_application_insights.app_insights.instrumentation_key
  sensitive   = true
}