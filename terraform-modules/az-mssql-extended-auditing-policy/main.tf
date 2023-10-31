resource "azurerm_mssql_server_extended_auditing_policy" "example" {
  count = var.enable_mssql_server_extended_auditing_policy !=0 ?1:0
  storage_endpoint       = var.az_storage_account_endpoint
  server_id              = var.mssql_server_id
  retention_in_days      = var.retention_in_days
  log_monitoring_enabled = var.log_monitoring_enabler
	storage_account_subscription_id = var.az_subscription
}

resource "azurerm_mssql_server_security_alert_policy" "dw_distribution_sql_security_alert_policy" {
  resource_group_name = var.resourcegroupname
  server_name         = var.mssql_server_name
  state               = var.state
}

resource "azurerm_mssql_server_vulnerability_assessment" "dw_distribution_sqlserver_vulnerabilityassesment" {
  server_security_alert_policy_id = azurerm_mssql_server_security_alert_policy.dw_distribution_sql_security_alert_policy.id
  storage_container_path          = "${data.azurerm_storage_account.core_vulnerability_stg_acct.primary_blob_endpoint}${data.azurerm_storage_container.core_vulnerability_stg_container.name}/"
  storage_account_access_key      = data.azurerm_storage_account.core_vulnerability_stg_acct.primary_access_key

  recurring_scans {
    enabled                   = true
    email_subscription_admins = false

  }


timeouts {
     create = "1h"
     read   = "1h"
     update = "1h"
     delete = "1h"

   }
}
