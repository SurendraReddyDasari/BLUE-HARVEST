variable "rg_name" {
  description = "Name of the resource group."
  type        = string
}


variable "asp_name" {
  description = "Name of the App Service Plan."
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be deployed."
  type        = string
}


variable "service_plan_id" {
  description = "(Required) Specifies the name of the Web App. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}


variable "webapp_name" {
  description = "Name of the Web App."
  type        = string
}

variable "app_settings" {
  description = "Additional app settings for the Web App."
  type        = map
  default     = {}
}

variable "client_affinity_enabled" {
  description = "Enable client affinity for the Web App."
  type        = bool
  default     = false
}

variable "always_on" {
  description = "Keep the Web App always on."
  type        = bool
  default     = true
}

variable "https_only" {
  description = "Force HTTPS-only access to the Web App."
  type        = bool
  default     = true
}

variable "min_tls_version" {
  description = "Minimum TLS version required for the Web App."
  type        = string
  default     = "1.2"
}

variable "ftps_state" {
  description = "Enable or disable FTPS for the Web App."
  type        = string
  default     = "Disabled"
}

variable "use_32_bit_worker_process" {
  description = "Use a 32-bit worker process for the Web App."
  type        = bool
  default     = false
}

variable "linux_fx_version" {
  description = "Linux function runtime version for the Web App."
  type        = string
}

variable "docker_image_name" {
  description = "Name of the Docker image for the Web App."
  type        = string
}

variable "docker_registry_url" {
  description = "URL of the Docker registry."
  type        = string
}

variable "docker_registry_username" {
  description = "Username for accessing the Docker registry."
  type        = string
}

variable "docker_registry_password" {
  description = "Password for accessing the Docker registry."
  type        = string
}
