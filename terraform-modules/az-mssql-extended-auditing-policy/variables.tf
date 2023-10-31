variable "resourcegroupname" {
  type        = string
  default     = "az-platform-test-"
  description = "Name of the new resource group to be created"

}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "Specify a location"
}

variable "azurerm_resource_group_name" {
  type        = list(any)
  description = "Provide name of the existing resource group name"
  default     = []
}


variable "az_storage_account_endpoint" {
	type=string
	description="Storage Account endpoint"
}

variable "mssql_server_id"{
	type = string
	description = "MSSQL Server Id"
}

variable "retention_in_days"{
	type=string
	description="Retention In days"
}

variable "log_monitoring_enabler"{
	type = boolean
	description = "Enable logging or not"
}

variable "az_subscription"{
	type= string
	description="Primary Azure Subscription Id"
}

variable "mssql_server_name"{
	type=string
	description="Name of the MSSQL Server"
}

variable "state"{
	type=string
	default="Enabled"
	description="Enable State"
}

variable "mssql_server_security_alert_policy_id"{
	type=string
	description="MSSQL Security Alert Policy Id"
}

variable "core_vulnerability_stg_acct"{
	type=string
	description="Core Vulnerability Storage Account"
}
