variable "name" {
  type        = string
  default     = "db-gateway"
  description = "Name of the SQL Server"
}

variable "server_id" {}

variable "sku_name" {
  type        = string
  default     = "S0"
  description = "Name of the SQL Server"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be merged with the default tag map"
  default = {
  }
}