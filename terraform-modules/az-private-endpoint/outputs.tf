output "pe_ip" {
  value = azurerm_private_endpoint.endpoint.private_service_connection.0.private_ip_address
}
