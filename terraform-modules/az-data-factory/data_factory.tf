resource "azurerm_data_factory" "data_factory" {
  name                      = var.adf_name
  location                  = var.location
  resource_group_name       = var.resourcegroupname
  public_network_enabled    = false
  tags                      = var.tags

  managed_virtual_network_enabled = var.managed_virtual_network_enabled

/*   dynamic "vsts_configuration" {

    for_each = var.is_dev ? [1] : []

    content {
      account_name    = "ajgre"
      branch_name     = "main"
      project_name    = var.devops_project_name
      repository_name = var.adf_repository_name
      root_folder     = var.root_folder
      tenant_id       = data.azurerm_client_config.current.tenant_id
    }
    
  } */
  /* vsts_configuration {
    account_name    = "ajgre"
    branch_name     = "main"
    project_name    = var.devops_project_name
    repository_name = var.adf_repository_name
    root_folder     = var.root_folder
    tenant_id       = data.azurerm_client_config.current.tenant_id
    }
 */
 lifecycle {
   ignore_changes = [
     vsts_configuration
   ]
 }
    identity {
        type = "SystemAssigned"
    }
}