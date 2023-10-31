module "windows_app_service" { #no ip restrictions configured
  source              = "../../"
  os_type             = var.os_type
  app_service_name    = var.app_service_name
  location            = var.location
  resourcegroupname   = var.resourcegroupname
  app_service_plan_id = var.app_service_plan_id
  site_config         = var.site_config
  tags                = var.tags
}

module "windows_app_service2" { #ip restrictions with default imperva cloud waf allow list
  source                        = "../../"
  os_type                       = var.os_type
  app_service_name              = "${var.app_service_name}-iprestr01"
  location                      = var.location
  resourcegroupname             = var.resourcegroupname
  app_service_plan_id           = var.app_service_plan_id
  site_config                   = var.site_config
  tags                          = var.tags
  enable_imperva_waf_allow_list = true
}

module "linux_app_service" { #ip restrictons with default imperava + additional input allow list and os changed to Linux
  source                        = "../../"
  os_type                       = "Linux"
  app_service_name              = "${var.app_service_name}-iprestr02"
  location                      = var.location
  resourcegroupname             = var.resourcegroupname
  app_service_plan_id           = var.app_service_plan_id
  site_config                   = var.site_config
  tags                          = var.tags
  enable_imperva_waf_allow_list = true
  ip_restrictions = {
    custom_allow = "1.2.3.4/32"
  }
}

module "windows_app_service3" { #no ip restrictions configured
  source               = "../../"
  os_type              = var.os_type
  app_service_name     = "${var.app_service_name}-cors"
  location             = var.location
  resourcegroupname    = var.resourcegroupname
  app_service_plan_id  = var.app_service_plan_id
  site_config          = var.site_config
  tags                 = var.tags
  cors_allowed_origins = ["https://myapp.gallagherre.com"]
}