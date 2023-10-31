output "service_plan_id" {
  description = "ID of the created Service Plan"
  value       = azurerm_service_plan.az_app_service_plan.id
}

output "service_plan_name" {
  description = "Name of the created Service Plan"
  value       = azurerm_service_plan.az_app_service_plan.name
}