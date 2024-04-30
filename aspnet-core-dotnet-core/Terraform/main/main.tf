data "azurerm_client_config" "current" {}

module "resource_group" {    
  source    = "../modules/resourcegroup"
  rg_name   = var.rg_name
  location  = var.location  
  tags      = var.tags
}


module "app_service_plan" {    
  depends_on = [ module.resource_group ]
  source     = "../modules/appserviceplan"
  asp_name   = var.asp_name
  location   = var.location  
  rg_name    = var.rg_name
  os_type    = var.os_type
  sku_name   = var.sku_name
}

module "web_app" {  
  depends_on                    = [ module.resource_group ]
  source                        = "../modules/webapp"
  webapp_name                   = var.webapp_name
  rg_name                       = var.rg_name
  location                      = var.location
  service_plan_id               = module.app_service_plan.app_service_id
  linux_fx_version              = var.linux_fx_version
  asp_name                      = var.asp_name
  docker_image_name             = var.docker_image_name
  docker_registry_url           = var.docker_registry_url
  docker_registry_username      = var.docker_registry_username
  docker_registry_password      = var.docker_registry_password

}