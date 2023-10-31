

module "network_test" {
  source             = "../"
  vnetwork_name      = var.vnetwork_name
  location           = var.location
  vnet_address_space = var.vnet_address_space
  # Multiple Subnets, Service delegation, Service Endpoints, Network security groups
  # NSG association to be added automatically for all subnets listed here.
  # subnet name will be set as per Azure naming convention by defaut. expected value here is: <App or project name>
  subnets             = var.subnets
  resource_group_name = var.resource_group_name
  tags                = module.tags-dev.tags
}
module "tags-dev" {
  source = "../../az-tags"
  tags = {
    bu             = "101701"
    AppID          = ""
    app_name       = "TerraformModules"
    Environment    = "D"
    Project        = "TerraformModules"
    department     = "GallagherRe"
    _DeployedUsing = "Terraform"
    _repo          = ""
    app_group      = "TerraformModules"
    division       = "GGBRe"
  }

}
