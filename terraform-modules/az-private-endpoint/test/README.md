## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.35.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.35.0 |
| <a name="provider_azurerm.app-hub"></a> [azurerm.app-hub](#provider\_azurerm.app-hub) | >=3.35.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_pe_test"></a> [pe\_test](#module\_pe\_test) | ../ | n/a |
| <a name="module_storage"></a> [storage](#module\_storage) | ../../az-storage | n/a |
| <a name="module_tags-dev"></a> [tags-dev](#module\_tags-dev) | ../../az-tags | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [random_id.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [azurerm_private_dns_zone.dns_zone](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/private_dns_zone) | data source |
| [azurerm_subnet.private_endpoint_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.private_endpoint_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_rg"></a> [dns\_rg](#input\_dns\_rg) | Resource Grouo where dns zones are created | `string` | n/a | yes |
| <a name="input_dns_zone_ids"></a> [dns\_zone\_ids](#input\_dns\_zone\_ids) | DNS Zone Ids of DNS Zones | `list(string)` | `[]` | no |
| <a name="input_hub_subscription_id"></a> [hub\_subscription\_id](#input\_hub\_subscription\_id) | Azure Subscription Id equivalent to AWS Account | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Specify a location | `string` | `"uksouth"` | no |
| <a name="input_private_dns_zone"></a> [private\_dns\_zone](#input\_private\_dns\_zone) | Microsoft Private DNS Zones | `string` | `"privatelink.database.windows.net"` | no |
| <a name="input_private_endpoint_name"></a> [private\_endpoint\_name](#input\_private\_endpoint\_name) | Name of the private endpoint | `string` | n/a | yes |
| <a name="input_private_endpoint_subnet_name"></a> [private\_endpoint\_subnet\_name](#input\_private\_endpoint\_subnet\_name) | Subnet name to import to work with the Private Endpoint | `string` | n/a | yes |
| <a name="input_private_endpoint_vnet_name"></a> [private\_endpoint\_vnet\_name](#input\_private\_endpoint\_vnet\_name) | Vnet name to import to work with the Private Endpoint | `string` | n/a | yes |
| <a name="input_private_endpoint_vnet_rg"></a> [private\_endpoint\_vnet\_rg](#input\_private\_endpoint\_vnet\_rg) | Resource Group where vnet located | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Grouo where private endpoint will be created | `string` | n/a | yes |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | Azure Resource Id for which private endpoint will be created | `string` | `""` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet Id | `string` | n/a | yes |
| <a name="input_subresource_names"></a> [subresource\_names](#input\_subresource\_names) | A list of subresource names which the Private Endpoint is able to connect to | `list(string)` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Azure Subscription Id equivalent to AWS Account | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be merged with the default tag map | `map(string)` | `{}` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Azure Tenant Id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_dns_zone_id"></a> [private\_dns\_zone\_id](#output\_private\_dns\_zone\_id) | n/a |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | n/a |
