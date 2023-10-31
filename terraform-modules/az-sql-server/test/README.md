## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.6.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_consume_sql"></a> [consume\_sql](#module\_consume\_sql) | ../ | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.existing_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/3.6.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_resource_group_location"></a> [azurerm\_resource\_group\_location](#input\_azurerm\_resource\_group\_location) | Provide name of the existing resource group name | `list(any)` | <pre>[<br>  "Test-Terraform-Module"<br>]</pre> | no |
| <a name="input_azurerm_resource_group_name"></a> [azurerm\_resource\_group\_name](#input\_azurerm\_resource\_group\_name) | Provide name of the existing resource group name | `list(any)` | `[]` | no |
| <a name="input_firewall_rules"></a> [firewall\_rules](#input\_firewall\_rules) | Provide firewall rule sets to be configured | `map` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | Specify a location | `string` | `"westeurope"` | no |
| <a name="input_resourcegroupname"></a> [resourcegroupname](#input\_resourcegroupname) | Name of the new resource group to be created | `string` | `"az-platform-test-"` | no |
| <a name="input_sqlservername"></a> [sqlservername](#input\_sqlservername) | Name of the SQL Server | `string` | `"az-platform-test"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
