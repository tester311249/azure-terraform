output "private_dns_zone_id" {
  value = data.azurerm_private_dns_zone.dns_zone.id
}

output "subnet_id" {
  value = data.azurerm_subnet.private_endpoint_subnet.id
}
