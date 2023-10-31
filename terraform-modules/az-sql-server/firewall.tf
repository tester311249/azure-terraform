# resource "azurerm_mssql_firewall_rule" "firewall_rules" {
#   for_each         = local.firewall_rules
#   name             = each.value.rule_name
#   server_id        = azurerm_mssql_server.sql_server_create.id
#   start_ip_address = each.value.start_ip_address
#   end_ip_address   = each.value.end_ip_address
# }
