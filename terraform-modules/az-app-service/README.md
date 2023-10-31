<!-- BEGIN_TF_DOCS -->
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
| [azurerm_linux_web_app.app_service_linux](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) | resource |
| [azurerm_windows_web_app.app_service_windows](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_service_name"></a> [app\_service\_name](#input\_app\_service\_name) | App Service Name | `string` | `"asp-name"` | no |
| <a name="input_app_service_plan_id"></a> [app\_service\_plan\_id](#input\_app\_service\_plan\_id) | App Service Plan ID | `string` | `"/subscriptions/b0826fa0-f6e2-458c-90db-ed31edcd0351/resourcegroups/Terraform-shared-emea-dev-rg/providers/Microsoft.Web/serverfarms/test-app-service-plan"` | no |
| <a name="input_app_settings"></a> [app\_settings](#input\_app\_settings) | App Settings for Application | `any` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | Specify a location | `string` | `"westeurope"` | no |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | Kind of App Service OS | `string` | `"Windows"` | no |
| <a name="input_resourcegroupname"></a> [resourcegroupname](#input\_resourcegroupname) | Name of the new resource group to be created | `string` | `"az-modules-test-"` | no |
| <a name="input_site_config"></a> [site\_config](#input\_site\_config) | Site config for App Service. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service.html#site_config. IP restriction attribute is no more managed in this block. | `any` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be merged with the default tag map | `map(string)` | `{}` | no |
| <a name="input_virtual_applications"></a> [virtual\_applications](#input\_virtual\_applications) | Virtual Application/Path configurations | `any` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->