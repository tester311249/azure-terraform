####################
# common variables #
####################
environment                 = "dev"
name                        = "kv-dev"
location                    = "uksouth"
azurerm_resource_group_name = ["Terraform-shared-emea-dev-rg"]

# ##################
# # Authentication #
# ##################
# azure_subscription_id = ""
# azure_client_id       = ""
# azure_client_secret   = ""
# azure_tenant_id       = ""

#############
# key vault #
#############
kv_full_object_id = ""
kv_read_object_id = ""
kv_secrets = {
  sqldb = {
    value = "" # setting to "" will auto-generate the password
  }
  webadmin = {
    value = "hLDmexfL8@m46Suevb!oao"
  }
}
