## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.6.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_az-rg-datalite"></a> [az-rg-datalite](#module\_az-rg-datalite) | ../../az-resource-groups | n/a |
| <a name="module_keyvault"></a> [keyvault](#module\_keyvault) | ../ | n/a |
| <a name="module_tags-dev"></a> [tags-dev](#module\_tags-dev) | ../../az-tags | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.existing_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/3.6.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure-client-id"></a> [azure-client-id](#input\_azure-client-id) | Azure Client ID | `string` | n/a | yes |
| <a name="input_azure-client-secret"></a> [azure-client-secret](#input\_azure-client-secret) | Azure Client Secret | `string` | n/a | yes |
| <a name="input_azure-subscription-id"></a> [azure-subscription-id](#input\_azure-subscription-id) | Azure Subscription ID | `string` | n/a | yes |
| <a name="input_azure-tenant-id"></a> [azure-tenant-id](#input\_azure-tenant-id) | Azure Tenant ID | `string` | n/a | yes |
| <a name="input_azurerm_resource_group_name"></a> [azurerm\_resource\_group\_name](#input\_azurerm\_resource\_group\_name) | Provide name of the existing resource group name | `list(any)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | This variable defines the environment to be built | `string` | n/a | yes |
| <a name="input_kv-certificate-permissions-full"></a> [kv-certificate-permissions-full](#input\_kv-certificate-permissions-full) | List of full certificate permissions, must be one or more from the following: backup, create, delete, deleteissuers, get, getissuers, import, list, listissuers, managecontacts, manageissuers, purge, recover, restore, setissuers and update | `list(string)` | <pre>[<br>  "Create",<br>  "Delete",<br>  "DeleteIssuers",<br>  "Get",<br>  "GetIssuers",<br>  "Import",<br>  "List",<br>  "ListIssuers",<br>  "ManageContacts",<br>  "ManageIssuers",<br>  "Purge",<br>  "Recover",<br>  "SetIssuers",<br>  "Update",<br>  "Backup",<br>  "Restore"<br>]</pre> | no |
| <a name="input_kv-certificate-permissions-read"></a> [kv-certificate-permissions-read](#input\_kv-certificate-permissions-read) | List of full certificate permissions, must be one or more from the following: backup, create, delete, deleteissuers, get, getissuers, import, list, listissuers, managecontacts, manageissuers, purge, recover, restore, setissuers and update | `list(string)` | <pre>[<br>  "Get",<br>  "GetIssuers",<br>  "List",<br>  "ListIssuers"<br>]</pre> | no |
| <a name="input_kv-disk-encryption"></a> [kv-disk-encryption](#input\_kv-disk-encryption) | Allow Azure Disk Encryption to retrieve secrets from the Azure Key Vault and unwrap keys | `string` | `"true"` | no |
| <a name="input_kv-full-object-id"></a> [kv-full-object-id](#input\_kv-full-object-id) | The object ID of a user, service principal or security group in the Azure Active Directory tenant for FULL access to the Azure Key Vault | `string` | `"bb6b0314-95e9-46a4-a2a2-b193fa6c6695"` | no |
| <a name="input_kv-key-permissions-full"></a> [kv-key-permissions-full](#input\_kv-key-permissions-full) | List of full key permissions, must be one or more from the following: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify and wrapKey | `list(string)` | <pre>[<br>  "Backup",<br>  "Create",<br>  "Decrypt",<br>  "Delete",<br>  "Encrypt",<br>  "Get",<br>  "Import",<br>  "List",<br>  "Purge",<br>  "Recover",<br>  "Restore",<br>  "Sign",<br>  "UnwrapKey",<br>  "Update",<br>  "Verify",<br>  "WrapKey"<br>]</pre> | no |
| <a name="input_kv-key-permissions-read"></a> [kv-key-permissions-read](#input\_kv-key-permissions-read) | List of read key permissions, must be one or more from the following: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify and wrapKey | `list(string)` | <pre>[<br>  "Get",<br>  "List"<br>]</pre> | no |
| <a name="input_kv-read-object-id"></a> [kv-read-object-id](#input\_kv-read-object-id) | The object ID of a user, service principal or security group in the Azure Active Directory tenant for READ access to the Azure Key Vault | `string` | `"bb6b0314-95e9-46a4-a2a2-b193fa6c6695"` | no |
| <a name="input_kv-secret-permissions-full"></a> [kv-secret-permissions-full](#input\_kv-secret-permissions-full) | List of full secret permissions, must be one or more from the following: backup, delete, get, list, purge, recover, restore and set | `list(string)` | <pre>[<br>  "Backup",<br>  "Delete",<br>  "Get",<br>  "List",<br>  "Purge",<br>  "Recover",<br>  "Restore",<br>  "Set"<br>]</pre> | no |
| <a name="input_kv-secret-permissions-read"></a> [kv-secret-permissions-read](#input\_kv-secret-permissions-read) | List of full secret permissions, must be one or more from the following: backup, delete, get, list, purge, recover, restore and set | `list(string)` | <pre>[<br>  "Get",<br>  "List"<br>]</pre> | no |
| <a name="input_kv-secrets"></a> [kv-secrets](#input\_kv-secrets) | Define Azure Key Vault secrets | <pre>map(object({<br>    value = string<br>  }))</pre> | `{}` | no |
| <a name="input_kv-storage-permissions-full"></a> [kv-storage-permissions-full](#input\_kv-storage-permissions-full) | List of full storage permissions, must be one or more from the following: backup, delete, deletesas, get, getsas, list, listsas, purge, recover, regeneratekey, restore, set, setsas and update | `list(string)` | <pre>[<br>  "Backup",<br>  "Delete",<br>  "DeleteSAS",<br>  "Get",<br>  "GetSAS",<br>  "List",<br>  "ListSAS",<br>  "Purge",<br>  "Recover",<br>  "RegenerateKey",<br>  "Restore",<br>  "Set",<br>  "SetSAS",<br>  "Update"<br>]</pre> | no |
| <a name="input_kv-storage-permissions-read"></a> [kv-storage-permissions-read](#input\_kv-storage-permissions-read) | List of read storage permissions, must be one or more from the following: backup, delete, deletesas, get, getsas, list, listsas, purge, recover, regeneratekey, restore, set, setsas and update | `list(string)` | <pre>[<br>  "Get",<br>  "GetSAS",<br>  "List",<br>  "ListSAS"<br>]</pre> | no |
| <a name="input_kv-template-deployment"></a> [kv-template-deployment](#input\_kv-template-deployment) | Allow Azure Resource Manager to retrieve secrets from the Azure Key Vault | `string` | `"true"` | no |
| <a name="input_kv-vm-deployment"></a> [kv-vm-deployment](#input\_kv-vm-deployment) | Allow Azure Virtual Machines to retrieve certificates stored as secrets from the Azure Key Vault | `string` | `"true"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the resource group will be created | `string` | `"uksouth"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of Resource Group to Create | `string` | `"az-platform-test"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key-vault-id"></a> [key-vault-id](#output\_key-vault-id) | Key Vault ID |
| <a name="output_key-vault-secrets"></a> [key-vault-secrets](#output\_key-vault-secrets) | n/a |
| <a name="output_key-vault-url"></a> [key-vault-url](#output\_key-vault-url) | Key Vault URI |
