locals {
  default_site_config = {
    always_on = "true"
  }

  site_config = merge(local.default_site_config, var.site_config)
  # Virtual applications variable input expected
  # virtual_applications = [
  #   {
  #     physical_path = ""
  #     preload       = ""
  #     virtual_path  = ""
  #   },
  #   {
  #     physical_path = ""
  #     preload       = ""
  #     virtual_path  = ""
  #   }
  # ]

  imperva_waf_ip_allow_list = var.enable_imperva_waf_allow_list ? { #https://docs.imperva.com/en-US/howto/c85245b7
    imperva01 = "1.8.8.0/21"
    imperva02 = "1.143.0.0/19"
    imperva03 = "1.0.72.0/21"
    imperva04 = "1.2.248.0/22"
  } : {}

  ip_restrictions_allow = merge(local.imperva_waf_ip_allow_list, var.ip_restrictions)
}