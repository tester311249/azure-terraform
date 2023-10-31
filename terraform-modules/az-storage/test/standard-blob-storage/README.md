# Standard Blob Storage Example

Terraform configuration which creates a Standard Blob Storage account.

This is considered a [legacy storage account type](https://learn.microsoft.com/en-us/azure/storage/common/storage-account-overview#legacy-storage-account-types). Microsoft recommends using [standard general-purpose v2 (GPv2) accounts](../standard-gpv2-storage/) instead when possible.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.35.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.35.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_storage"></a> [storage](#module\_storage) | ../.. | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [random_id.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The location to create the resources in. | `string` | `"uksouth"` | no |

## Outputs

No outputs.
