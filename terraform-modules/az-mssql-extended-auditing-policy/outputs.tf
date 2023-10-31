output "storage_account_endpoint"{
	value = data.azurerm_storage_account.core_vulnerability_stg_acct.primary_blob_endpoint

}

output "storage_account_container_name"{
	value=data.azurerm_storage_container.core_vulnerability_stg_container.name
}

output "storage_account_access_key"{
	value=data.azurerm_storage_account.core_vulnerability_stg_acct.primary_access_key

}
