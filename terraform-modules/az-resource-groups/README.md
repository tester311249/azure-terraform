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
| [azurerm_resource_group.az_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Specify a location | `string` | `"westeurope"` | no |
| <a name="input_resourcegroupname"></a> [resourcegroupname](#input\_resourcegroupname) | Name of the new resource group to be created | `string` | `"az-platform-test-"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Azure Subscription Id equivalent to AWS Account | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be merged with the default tag map | `map(string)` | `{}` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Azure Tenant Id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource-group-location"></a> [resource-group-location](#output\_resource-group-location) | Azure Resource Group Location |
| <a name="output_resource-group-name"></a> [resource-group-name](#output\_resource-group-name) | Azure Resource Group Name |
