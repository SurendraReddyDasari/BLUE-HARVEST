resource "azurerm_linux_web_app" "example" {
  name                      = var.webapp_name
  location                  = var.location
  resource_group_name       = var.rg_name
  service_plan_id           = var.service_plan_id
  app_settings              = var.app_settings
  client_affinity_enabled   = var.client_affinity_enabled
  https_only                = var.https_only

  
 
  site_config {
    always_on               = var.always_on
    
    application_stack {
      docker_image_name         = var.docker_image_name
      docker_registry_url       = var.docker_registry_url
      docker_registry_username  = var.docker_registry_username
      docker_registry_password  = var.docker_registry_password
    }
  }
} 