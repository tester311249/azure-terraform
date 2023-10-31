module "az-data-factory" {
    source                      = "../../"
    adf_name                    = var.adf_name
    location                    = var.location
    resourcegroupname           = var.resourcegroupname
    tags                        = var.tags
    
    devops_project_name         = var.devops_project_name
    adf_repository_name         = var.adf_repository_name
    root_folder                 = var.root_folder
    managed_virtual_network_enabled = var.managed_virtual_network_enabled
}