
resource "random_id" "this" {
  byte_length = 8
}

resource "azurerm_resource_group" "this" {
  name     = "rg-${random_id.this.hex}"
  location = var.location
}


module "storage" {
  source = "../.."

  account_name        = "st${random_id.this.hex}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location

  is_hns_enabled = true

  blob_properties = {
    versioning_enabled  = false
    change_feed_enabled = false
    restore_policy_days = 0
  }

  share_properties = null
}
