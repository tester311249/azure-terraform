data "azurerm_resource_group" "existing_resource_group" {
  count = length(var.azurerm_resource_group_name) >= 1 ? 1 : 0
  name  = var.azurerm_resource_group_name[0]
}


data "azurerm_storage_account" "core_vulnerability_stg_acct" {
  name                = var.vulnerability_stg_acct
  resource_group_name = var.vulnerability_stg_acct_rg
}

data "azurerm_storage_container" "core_vulnerability_stg_container" {
  name                 = var.vulnerability_stg_container
  storage_account_name = data.azurerm_storage_account.core_vulnerability_stg_acct.name
}
