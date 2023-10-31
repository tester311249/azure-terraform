output "id" {
    value = (var.os_type == "Windows" ? azurerm_windows_web_app.app_service_windows["enabled"].id : azurerm_linux_web_app.app_service_linux["enabled"].id)
    description = "ID of Web app"
}

output "principal_id" {
    value = (var.os_type == "Windows" ? azurerm_windows_web_app.app_service_windows["enabled"].identity[0].principal_id : azurerm_linux_web_app.app_service_linux["enabled"].identity[0].principal_id)
    description = "Managed Identity of Web app"
}
