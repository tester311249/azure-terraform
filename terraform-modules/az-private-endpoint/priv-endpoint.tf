# The purpose of this terraform module is to provision Private Endpoints in a Hub-Spoke architecture so that
# resources have accessibility outside.

# Create Private Endpoint
resource "azurerm_private_endpoint" "endpoint" {
  name                = var.private_endpoint_name
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = var.subnet_id

  private_dns_zone_group {
    name                 = "default"
    private_dns_zone_ids = var.dns_zone_ids
  }

  private_service_connection {
    name                           = var.private_endpoint_name
    private_connection_resource_id = var.resource_id
    is_manual_connection           = false
    subresource_names              = var.subresource_names
  }

  tags                = var.tags
}


