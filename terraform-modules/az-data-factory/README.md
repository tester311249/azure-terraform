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
| [azurerm_data_factory.data_factory](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adf_name"></a> [adf\_name](#input\_adf\_name) | ADF Name | `string` | `"adf-name"` | no |
| <a name="input_adf_repository_name"></a> [adf\_repository\_name](#input\_adf\_repository\_name) | ADF Repo Name | `string` | `"developer experience"` | no |
| <a name="input_devops_project_name"></a> [devops\_project\_name](#input\_devops\_project\_name) | Devops Project Name | `string` | `"Developer Experience"` | no |
| <a name="input_location"></a> [location](#input\_location) | Specify a location | `string` | `"uksouth"` | no |
| <a name="input_resourcegroupname"></a> [resourcegroupname](#input\_resourcegroupname) | Name of the new resource group to be created | `string` | `"az-developer-experience-rg"` | no |
| <a name="input_root_folder"></a> [root\_folder](#input\_root\_folder) | ADF Root Folder | `string` | `"Data Factory"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->