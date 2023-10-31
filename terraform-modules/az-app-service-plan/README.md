## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_service_plan.az_app_service_plan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aspname"></a> [aspname](#input\_aspname) | Name of App Service Plan | `string` | `"module-asp"` | no |
| <a name="input_location"></a> [location](#input\_location) | Specify a location | `string` | `"westeurope"` | no |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | Kind of App Service Plan OS | `string` | `"Windows"` | no |
| <a name="input_resourcegroupname"></a> [resourcegroupname](#input\_resourcegroupname) | Name of the new resource group to be created | `string` | `"az-modules-test-"` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | SKU block for ASP | `string` | `"B1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be merged with the default tag map | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_plan_id"></a> [service\_plan\_id](#output\_service\_plan\_id) | ID of the created Service Plan |
| <a name="output_service_plan_name"></a> [service\_plan\_name](#output\_service\_plan\_name) | Name of the created Service Plan |
