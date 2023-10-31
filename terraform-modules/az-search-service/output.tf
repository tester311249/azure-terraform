output "searchserviceId" {
    value = azurerm_search_service.searchservice.id
}

output "name" {
value = azurerm_search_service.searchservice.name
}

output "primary_key" {
value = azurerm_search_service.searchservice.primary_key
sensitive = true
}

output "url" {
value = "https://${azurerm_search_service.searchservice.name}.search.windows.net"
}

output "principal_id" {
	value       = azurerm_search_service.searchservice.identity[0].principal_id
}