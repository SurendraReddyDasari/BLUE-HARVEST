variable "rg_name" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."  
  default = "bh-ade-rg932"
}

variable "location" {
    description =  "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."    
    default = "northeurope"  
}

variable "tags" {
    description =  "(Optional) A mapping of tags which should be assigned to the Resource Group."
    default = {  
      "source" = "terraform"
      "env"    = "dev"
      "cost"   = "163"
      "dept"   = "finance"
    }
}





variable "asp_name" {
  description = ""
  default = "bh-asp-932"
}

variable "webapp_name" {
  description = ""
  default = "bh-webapp-932"
}


variable "docker_image_name" {
  description = "Name of the Docker image for the Web App."
  type        = string
  default     = "docker_image_name"  # give your desired Docker Image here 
}

variable "docker_registry_url" {
  description = "URL of the Docker registry."
  type        = string
  default     = "https://index.docker.io"
}

variable "docker_registry_username" {
  description = "Username for accessing the Docker registry."
  type        = string
  default     = "username"  # give your username here
}

variable "docker_registry_password" {
  description = "Password for accessing the Docker registry."
  type        = string
  default     = "password"  # give your password here
}

variable "linux_fx_version" {
  description = "Linux function runtime version for the Web App."
  type        = string
  default     = "~2|dotnet"
}

variable "os_type" {
  description = "Operating system type for the App Service Plan."
  type        = string
  default     = "Linux"
}

variable "sku_name" {
  description = "SKU name for the App Service Plan."
  type        = string
  default     = "B1"
}
