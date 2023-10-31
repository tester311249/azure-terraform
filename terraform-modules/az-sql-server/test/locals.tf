#  The user can create firewall rules for allowing access to SQL Server provided
# public endpoint access is allowed. This is a placeholder to do so. Refer Azure private endpoint design pattern to expose
# Azure resources when network restrictions are there

# locals {
#   firewall_config = yamldecode(file("./firewall.yaml"))
#   rules           = local.firewall_config.name

#   firewall_rules = {
#     for k in local.rules : k.rule_name => {
#       start_ip_address = k.start_ip_address
#       end_ip_address   = k.end_ip_address
#       rule_name        = k.rule_name
#     }
#   }
# }

# This is to grab the secret stored in key-vault that gets generated/created using az-key-vault module.
# Further the user can deploy key vault separately using az-key-vault terraform module and use data source to provide the
# admin-password to az-sql-server module. Example usage could be referred here :
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault_secrets

locals {
  admin_pwd = module.keyvault.key-vault-secrets[0]
}
