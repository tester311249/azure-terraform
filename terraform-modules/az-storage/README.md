# Azure Storage Terraform Module

Terraform module which creates an Azure Storage account.

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
| [azurerm_advanced_threat_protection.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/advanced_threat_protection) | resource |
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_tier"></a> [access\_tier](#input\_access\_tier) | The access tier to use for this Storage account. | `string` | `"Hot"` | no |
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | The Kind of this Storage account. | `string` | `"StorageV2"` | no |
| <a name="input_account_name"></a> [account\_name](#input\_account\_name) | The name of this Storage account. | `string` | n/a | yes |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | The type of replication to use for this Storage account. | `string` | `"RAGRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | The Tier of this Storage account. | `string` | `"Standard"` | no |
| <a name="input_allow_blob_public_access"></a> [allow\_blob\_public\_access](#input\_allow\_blob\_public\_access) | Allow public access to this Blob Storage? | `bool` | `false` | no |
| <a name="input_blob_properties"></a> [blob\_properties](#input\_blob\_properties) | The properties of this Blob Storage. | <pre>object({<br>    versioning_enabled                     = optional(bool, true) # Is versioning enabled for this Blob Storage?<br>    change_feed_enabled                    = optional(bool, true) # Is change feed enabled for this Blob Storage?<br>    delete_retention_policy_days           = optional(number, 35) # The number of days that deleted blobs should be retained.<br>    container_delete_retention_policy_days = optional(number, 35) # The number of days that deleted blob containers should be retained.<br>    restore_policy_days                    = optional(number, 30) # The number of days in the past to set the maximum point-in-time restore point for containers. Set value to `0` to disable.<br><br>    cors_rules = optional(list(object({<br>      allowed_headers    = list(string)<br>      allowed_methods    = list(string)<br>      allowed_origins    = list(string)<br>      exposed_headers    = list(string)<br>      max_age_in_seconds = number<br>    })), [])<br>  })</pre> | `{}` | no |
| <a name="input_firewall_bypass"></a> [firewall\_bypass](#input\_firewall\_bypass) | Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of Logging, Metrics, AzureServices, or None | `list(string)` | <pre>[<br>  "AzureServices"<br>]</pre> | no |
| <a name="input_firewall_default_action"></a> [firewall\_default\_action](#input\_firewall\_default\_action) | Specifies the default action of allow or deny when no other rules match. | `string` | `"Deny"` | no |
| <a name="input_firewall_ip_rules"></a> [firewall\_ip\_rules](#input\_firewall\_ip\_rules) | The public IPs or IP ranges in CIDR format that should be able to access this Storage account. Only IPv4 addresses are allowed. | `list(string)` | `[]` | no |
| <a name="input_firewall_virtual_network_subnet_ids"></a> [firewall\_virtual\_network\_subnet\_ids](#input\_firewall\_virtual\_network\_subnet\_ids) | Allowed subnet resources ids using service endpoints | `list(string)` | `[]` | no |
| <a name="input_is_hns_enabled"></a> [is\_hns\_enabled](#input\_is\_hns\_enabled) | Is Data Lake Storage Gen2 hierarchical namespace enabled for this Storage account? | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | The location to create the resources in. | `string` | n/a | yes |
| <a name="input_queue_encryption_key_type"></a> [queue\_encryption\_key\_type](#input\_queue\_encryption\_key\_type) | The type of encryption to use for this Queue Storage. | `string` | `"Service"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group to create the resources in. | `string` | n/a | yes |
| <a name="input_share_properties"></a> [share\_properties](#input\_share\_properties) | n/a | <pre>object({<br>    retention_policy_days = optional(number, 30) # The number of days that files should be retained.<br>  })</pre> | `{}` | no |
| <a name="input_shared_access_key_enabled"></a> [shared\_access\_key\_enabled](#input\_shared\_access\_key\_enabled) | Is authorization with access key enabled for this Storage account? | `bool` | `false` | no |
| <a name="input_table_encryption_key_type"></a> [table\_encryption\_key\_type](#input\_table\_encryption\_key\_type) | The type of encryption to use for this Table Storage. | `string` | `"Service"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resources. | `map(string)` | `{}` | no |
| <a name="input_threat_protection_enabled"></a> [threat\_protection\_enabled](#input\_threat\_protection\_enabled) | Is threat protection (Microsoft Defender for Storage) enabled for this Storage account? | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | The ID of this Storage account. |
| <a name="output_account_name"></a> [account\_name](#output\_account\_name) | The name of this Storage account. |
| <a name="output_blob_endpoint"></a> [blob\_endpoint](#output\_blob\_endpoint) | The endpoint URL for this Blob Storage. |
| <a name="output_file_endpoint"></a> [file\_endpoint](#output\_file\_endpoint) | The endpoint URL of this File Storage. |
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | The primary access key for this Storage account. |
| <a name="output_primary_connection_string"></a> [primary\_connection\_string](#output\_primary\_connection\_string) | The primary connection string for this Storage account. |
| <a name="output_queue_endpoint"></a> [queue\_endpoint](#output\_queue\_endpoint) | The endpoint URL for this Queue Storage. |
| <a name="output_secondary_access_key"></a> [secondary\_access\_key](#output\_secondary\_access\_key) | The secondary access key for this Storage account. |
| <a name="output_secondary_blob_endpoint"></a> [secondary\_blob\_endpoint](#output\_secondary\_blob\_endpoint) | The secondary endpoint URL for this Blob Storage. |
| <a name="output_secondary_connection_string"></a> [secondary\_connection\_string](#output\_secondary\_connection\_string) | The secondary connection string for this Storage account. |
| <a name="output_secondary_file_endpoint"></a> [secondary\_file\_endpoint](#output\_secondary\_file\_endpoint) | The secondary endpoint URL of this File Storage. |
| <a name="output_secondary_queue_endpoint"></a> [secondary\_queue\_endpoint](#output\_secondary\_queue\_endpoint) | The secondary endpoint URL for this Queue Storage. |
| <a name="output_secondary_table_endpoint"></a> [secondary\_table\_endpoint](#output\_secondary\_table\_endpoint) | The secondary endpoint URL for this Table Storage. |
| <a name="output_table_endpoint"></a> [table\_endpoint](#output\_table\_endpoint) | The endpoint URL for this Table Storage. |
