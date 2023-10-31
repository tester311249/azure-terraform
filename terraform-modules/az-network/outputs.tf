output "subnet_ids" {
  description = "List of IDs of subnets"
  value       = flatten(concat([for s in azurerm_subnet.snet : s.id], [var.gateway_subnet_address_prefix != null ? azurerm_subnet.gw_snet.0.id : null], [var.firewall_subnet_address_prefix != null ? azurerm_subnet.fw-snet.0.id : null]))
}

output "subnet_address_prefixes" {
  description = "List of address prefix for subnets"
  value       = flatten(concat([for s in azurerm_subnet.snet : s.address_prefixes], [var.gateway_subnet_address_prefix != null ? azurerm_subnet.gw_snet.0.address_prefixes : null], [var.firewall_subnet_address_prefix != null ? azurerm_subnet.fw-snet.0.address_prefixes : null]))
}

output "network_security_group_ids" {
  description = "List of Network security groups and ids"
  value       = [for n in azurerm_network_security_group.nsg : n.id]
}
