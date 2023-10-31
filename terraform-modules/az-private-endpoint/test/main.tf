resource "random_id" "this" {
  byte_length = 8
}

# Create Azure Resource Group
resource "azurerm_resource_group" "this" {
  name     = "rg-${random_id.this.hex}"
  location = var.location
  tags     = module.tags-dev.tags
}

# Create Storage Account Resource
module "storage" {
  source = "../../az-storage"

  account_name        = "st${random_id.this.hex}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location

  account_kind = "BlobStorage"

  blob_properties = {
    restore_policy_days = 0
  }

  share_properties = null
}

# Create Tags
module "tags-dev" {
  source = "../../az-tags"
  tags = {
    bu          = "101701"
    AppID       = ""
    app_name    = "DataLite"
    environment = "dev"
    Project     = "DataLite"
    department  = "GallagherRe"
    app_group   = "DataLite"
    division    = "GGBRe"
  }

}

# Create Private Endpoint for Storage Account Resource
module "pe_test" {
  source                       = "../"
  tenant_id                    = var.tenant_id
  private_dns_zone             = var.private_dns_zone
  resource_group_name          = var.resource_group_name
  location                     = var.location
  subnet_id                    = data.azurerm_subnet.private_endpoint_subnet.id
  dns_zone_ids                 = [data.azurerm_private_dns_zone.dns_zone.id]
  resource_id                  = module.storage.account_id
  private_endpoint_name        = var.private_endpoint_name
  subresource_names            = var.subresource_names
  tags                         = module.tags-dev.tags
  private_endpoint_subnet_name = var.private_endpoint_subnet_name
  private_endpoint_vnet_name   = var.private_endpoint_vnet_name
  subscription_id              = var.subscription_id
  hub_subscription_id          = var.hub_subscription_id
  dns_rg                       = var.dns_rg
  private_endpoint_vnet_rg     = var.private_endpoint_vnet_rg
}

# # Create DNS A Record
resource "azurerm_private_dns_a_record" "dns_a" {
  provider            = azurerm.app-hub
  name                = var.private_endpoint_name
  zone_name           = var.private_dns_zone
  resource_group_name = var.dns_rg
  ttl                 = 300
  records             = [module.pe_test.pe_ip]
}
