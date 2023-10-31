output "resource-group-name"{
	description = "Azure Resource Group Name"
	value=join("",azurerm_resource_group.az_resource_group.*.name)
	depends_on = [
	  azurerm_resource_group.az_resource_group
	]
}

output "resource-group-location"{
	description = "Azure Resource Group Location"
	value=join("",azurerm_resource_group.az_resource_group.*.location)
	depends_on = [
	  azurerm_resource_group.az_resource_group
	]
}
