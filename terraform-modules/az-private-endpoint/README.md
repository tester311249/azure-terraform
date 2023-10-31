https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint

This module manages a Azure Private Endpoint


Azure Private Endpoint is a network interface that connects privately and securely to a service powered by Azure Private Link. Private Endpoint uses a private IP address from the VNet, effectively bringing the service into VNet. The service could be an Azure service such as Azure Storage, SQL, etc. or your own Private Link Service.

The implementation is in a Hub-Spoke architecture.


## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_azurerm.app-hub"></a> [azurerm.app-hub](#provider\_azurerm.app-hub) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_a_record.dns_a](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record) | resource |
| [azurerm_private_endpoint.endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_rg"></a> [dns\_rg](#input\_dns\_rg) | Resource Grouo where dns zones are created | `string` | n/a | yes |
| <a name="input_dns_zone_ids"></a> [dns\_zone\_ids](#input\_dns\_zone\_ids) | DNS Zone Ids of DNS Zones | `list(string)` | `[]` | no |
| <a name="input_hub_subscription_id"></a> [hub\_subscription\_id](#input\_hub\_subscription\_id) | Azure hub Subscription Id equivalent to AWS Account | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Specify a location | `string` | `"uksouth"` | no |
| <a name="input_private_dns_zone"></a> [private\_dns\_zone](#input\_private\_dns\_zone) | Microsoft Private DNS Zones | `string` | n/a | yes |
| <a name="input_private_endpoint_name"></a> [private\_endpoint\_name](#input\_private\_endpoint\_name) | Name of the private endpoint | `string` | n/a | yes |
| <a name="input_private_endpoint_subnet_name"></a> [private\_endpoint\_subnet\_name](#input\_private\_endpoint\_subnet\_name) | Subnet name to import to work with the Private Endpoint | `string` | n/a | yes |
| <a name="input_private_endpoint_vnet_name"></a> [private\_endpoint\_vnet\_name](#input\_private\_endpoint\_vnet\_name) | Vnet name to import to work with the Private Endpoint | `string` | n/a | yes |
| <a name="input_private_endpoint_vnet_rg"></a> [private\_endpoint\_vnet\_rg](#input\_private\_endpoint\_vnet\_rg) | Resource Group where vnet located | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Grouo where private endpoint will be created | `string` | n/a | yes |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | Azure Resource Id for which private endpoint will be created | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet Id | `string` | n/a | yes |
| <a name="input_subresource_names"></a> [subresource\_names](#input\_subresource\_names) | A list of subresource names which the Private Endpoint is able to connect to | `list(string)` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Azure Spoke Subscription Id equivalent to AWS Account | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be merged with the default tag map | `map(string)` | `{}` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Azure Spoke Tenant Id | `string` | n/a | yes |

## Outputs

No outputs.
