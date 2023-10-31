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
| [azurerm_logic_app_standard.logic_app_std](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/logic_app_standard) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_service_plan_id"></a> [app\_service\_plan\_id](#input\_app\_service\_plan\_id) | ID of the Workflow App Service Plan | `string` | n/a | yes |
| <a name="input_integration_subnet_id"></a> [integration\_subnet\_id](#input\_integration\_subnet\_id) | ID of the Subnet used for Vnet Integration | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location of the Logic App | `string` | n/a | yes |
| <a name="input_logic_app_name"></a> [logic\_app\_name](#input\_logic\_app\_name) | Name of the logic app | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group in which Logic App resides | `string` | n/a | yes |
| <a name="input_stg_primary_access_key"></a> [stg\_primary\_access\_key](#input\_stg\_primary\_access\_key) | Primary Access key of the storage account used by Logic App | `string` | n/a | yes |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Name of the storage account used by Logic App | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_logic_app_default_hostname"></a> [logic\_app\_default\_hostname](#output\_logic\_app\_default\_hostname) | n/a |
| <a name="output_logic_app_id"></a> [logic\_app\_id](#output\_logic\_app\_id) | n/a |
| <a name="output_logic_app_kind"></a> [logic\_app\_kind](#output\_logic\_app\_kind) | n/a |
| <a name="output_logic_app_managed_identity"></a> [logic\_app\_managed\_identity](#output\_logic\_app\_managed\_identity) | n/a |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.35.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =3.35.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_Logic_App_Standard"></a> [Logic\_App\_Standard](#module\_Logic\_App\_Standard) | ../ | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_service_plan.logic_app_appsvcplan](https://registry.terraform.io/providers/hashicorp/azurerm/3.35.0/docs/data-sources/service_plan) | data source |
| [azurerm_storage_account.logic_app_stg_acct](https://registry.terraform.io/providers/hashicorp/azurerm/3.35.0/docs/data-sources/storage_account) | data source |
| [azurerm_subnet.integration_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.35.0/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.integration_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.35.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_appsvcplanrg"></a> [appsvcplanrg](#input\_appsvcplanrg) | Name of the app service plan resource group | `string` | `"coreservicesappserviceplan-main-emea-dev-rg"` | no |
| <a name="input_importappsvcplan"></a> [importappsvcplan](#input\_importappsvcplan) | Name of the app service plan to import | `string` | `"ggbre-wfcore01-appsvcplan-dev-eriqlthuy3"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the Logic App | `string` | `"uksouth"` | no |
| <a name="input_logic_app_name"></a> [logic\_app\_name](#input\_logic\_app\_name) | Name of the logic app | `string` | `"ggbre-logic-app"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group in which Logic App resides | `string` | `"datahub-poc-emea-dev-rg"` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Name of the storage account used by Logic App | `string` | `"ggbredatadevkepzwfr15y"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Name of the subnet used for vnet integration | `string` | `"ASP-Subnet"` | no |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Name of the vnet used for integration | `string` | `"gallagherre-emea-dev-vnet"` | no |
| <a name="input_vnet_rg"></a> [vnet\_rg](#input\_vnet\_rg) | Name of the resource group in which integration vnet resides | `string` | `"network-rg"` | no |

## Outputs

No outputs.
