variable "rg_name" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type = string
  default = ""
}

variable "asp_name" {
  description = " (Required) Specifies the name of the App Service Plan."
  type = string
  default = ""
}

variable "location" {
    description =  "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
    type = string
    default = ""  
}

variable "os_type" {
  description = "Operating system type for the App Service Plan."
  type        = string
  default     = ""
}

variable "sku_name" {
  description = "SKU name for the App Service Plan."
  type        = string
  default     = ""
}
