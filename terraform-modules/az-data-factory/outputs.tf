output "df_id"{
	value = azurerm_data_factory.data_factory.id
	description = "The id of the data-factory created for consumption"
}

output "principal_id" {
	value       = azurerm_data_factory.data_factory.identity[0].principal_id
    description = "Managed Identity of Data Factory"
}
