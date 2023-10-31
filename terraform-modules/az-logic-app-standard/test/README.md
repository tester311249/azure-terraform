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
