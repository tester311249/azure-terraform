# How to create an Azure Key Vault using a Terraform Module


## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.6.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.key-vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_key_vault_access_policy.default_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_access_policy.policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_secret.secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.existing_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_resource_group_name"></a> [azurerm\_resource\_group\_name](#input\_azurerm\_resource\_group\_name) | Provide name of the existing resource group name | `list(any)` | <pre>[<br>  "DataHubLite-main-emea-dev-rg"<br>]</pre> | no |
| <a name="input_enabled_for_deployment"></a> [enabled\_for\_deployment](#input\_enabled\_for\_deployment) | Allow Azure Virtual Machines to retrieve certificates stored as secrets from the Azure Key Vault | `string` | `"true"` | no |
| <a name="input_enabled_for_disk_encryption"></a> [enabled\_for\_disk\_encryption](#input\_enabled\_for\_disk\_encryption) | Allow Azure Disk Encryption to retrieve secrets from the Azure Key Vault and unwrap keys | `string` | `"true"` | no |
| <a name="input_enabled_for_template_deployment"></a> [enabled\_for\_template\_deployment](#input\_enabled\_for\_template\_deployment) | Allow Azure Resource Manager to retrieve secrets from the Azure Key Vault | `string` | `"true"` | no |
| <a name="input_kv-certificate-permissions-full"></a> [kv-certificate-permissions-full](#input\_kv-certificate-permissions-full) | List of full certificate permissions, must be one or more from the following: backup, create, delete, deleteissuers, get, getissuers, import, list, listissuers, managecontacts, manageissuers, purge, recover, restore, setissuers and update | `list(string)` | <pre>[<br>  "Create",<br>  "Delete",<br>  "DeleteIssuers",<br>  "Get",<br>  "GetIssuers",<br>  "Import",<br>  "List",<br>  "ListIssuers",<br>  "ManageContacts",<br>  "ManageIssuers",<br>  "Purge",<br>  "Recover",<br>  "SetIssuers",<br>  "Update",<br>  "Backup",<br>  "Restore"<br>]</pre> | no |
| <a name="input_kv-certificate-permissions-read"></a> [kv-certificate-permissions-read](#input\_kv-certificate-permissions-read) | List of full certificate permissions, must be one or more from the following: backup, create, delete, deleteissuers, get, getissuers, import, list, listissuers, managecontacts, manageissuers, purge, recover, restore, setissuers and update | `list(string)` | <pre>[<br>  "Get",<br>  "GetIssuers",<br>  "List",<br>  "ListIssuers"<br>]</pre> | no |
| <a name="input_kv-key-permissions-full"></a> [kv-key-permissions-full](#input\_kv-key-permissions-full) | List of full key permissions, must be one or more from the following: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify and wrapKey | `list(string)` | <pre>[<br>  "Backup",<br>  "Create",<br>  "Decrypt",<br>  "Delete",<br>  "Encrypt",<br>  "Get",<br>  "Import",<br>  "List",<br>  "Purge",<br>  "Recover",<br>  "Restore",<br>  "Sign",<br>  "UnwrapKey",<br>  "Update",<br>  "Verify",<br>  "WrapKey"<br>]</pre> | no |
| <a name="input_kv-key-permissions-read"></a> [kv-key-permissions-read](#input\_kv-key-permissions-read) | List of read key permissions, must be one or more from the following: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify and wrapKey | `list(string)` | <pre>[<br>  "Get",<br>  "List"<br>]</pre> | no |
| <a name="input_kv-secret-permissions-full"></a> [kv-secret-permissions-full](#input\_kv-secret-permissions-full) | List of full secret permissions, must be one or more from the following: backup, delete, get, list, purge, recover, restore and set | `list(string)` | <pre>[<br>  "Backup",<br>  "Delete",<br>  "Get",<br>  "List",<br>  "Purge",<br>  "Recover",<br>  "Restore",<br>  "Set"<br>]</pre> | no |
| <a name="input_kv-secret-permissions-read"></a> [kv-secret-permissions-read](#input\_kv-secret-permissions-read) | List of full secret permissions, must be one or more from the following: backup, delete, get, list, purge, recover, restore and set | `list(string)` | <pre>[<br>  "Get",<br>  "List"<br>]</pre> | no |
| <a name="input_kv-storage-permissions-full"></a> [kv-storage-permissions-full](#input\_kv-storage-permissions-full) | List of full storage permissions, must be one or more from the following: backup, delete, deletesas, get, getsas, list, listsas, purge, recover, regeneratekey, restore, set, setsas and update | `list(string)` | <pre>[<br>  "Backup",<br>  "Delete",<br>  "DeleteSAS",<br>  "Get",<br>  "GetSAS",<br>  "List",<br>  "ListSAS",<br>  "Purge",<br>  "Recover",<br>  "RegenerateKey",<br>  "Restore",<br>  "Set",<br>  "SetSAS",<br>  "Update"<br>]</pre> | no |
| <a name="input_kv-storage-permissions-read"></a> [kv-storage-permissions-read](#input\_kv-storage-permissions-read) | List of read storage permissions, must be one or more from the following: backup, delete, deletesas, get, getsas, list, listsas, purge, recover, regeneratekey, restore, set, setsas and update | `list(string)` | <pre>[<br>  "Get",<br>  "GetSAS",<br>  "List",<br>  "ListSAS"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Define the region the Azure Key Vault should be created, you should use the Resource Group location | `string` | `"uksouth"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Azure Key Vault | `string` | n/a | yes |
| <a name="input_policies"></a> [policies](#input\_policies) | Define a Azure Key Vault access policy | <pre>map(object({<br>    tenant_id               = string<br>    object_id               = string<br>    key_permissions         = list(string)<br>    secret_permissions      = list(string)<br>    certificate_permissions = list(string)<br>    storage_permissions     = list(string)<br>  }))</pre> | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of Resource Group to Create | `string` | `"az-platform-test"` | no |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | Define Azure Key Vault secrets | <pre>map(object({<br>    value = string<br>  }))</pre> | `{}` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | Select Standard or Premium SKU | `string` | `"standard"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key-vault-id"></a> [key-vault-id](#output\_key-vault-id) | Key Vault ID |
| <a name="output_key-vault-secrets"></a> [key-vault-secrets](#output\_key-vault-secrets) | n/a |
| <a name="output_key-vault-url"></a> [key-vault-url](#output\_key-vault-url) | Key Vault URI |
