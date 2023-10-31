module "app_service_plan" {
    source              = "../"
    aspname             = var.aspname
    location            = var.location
    resourcegroupname   = var.resourcegroupname
    os_type             = var.os_type
    sku_name            = var.sku_name
    tags                = var.tags  
}