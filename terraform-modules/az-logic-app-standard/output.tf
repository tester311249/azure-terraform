output "logic_app_id" {
  value = azurerm_logic_app_standard.logic_app_std.id
}

output "logic_app_managed_identity" {
  value = azurerm_logic_app_standard.logic_app_std.identity.0.principal_id
}

output "logic_app_default_hostname" {
  value = azurerm_logic_app_standard.logic_app_std.default_hostname
}

output "logic_app_kind" {
  value = azurerm_logic_app_standard.logic_app_std.kind
}