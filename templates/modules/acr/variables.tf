variable "resource_group_name" {
  description = "The name of the resource group where the Key Vault will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the Key Vault will be created."
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
}

variable "acr_sku" {
  description = "The SKU for the Azure Container Registry."
  type        = string
}

variable "acr_admin_enabled" {
  description = "Whether to enable the admin user for the Azure Container Registry."
  type        = bool
  default     = false
}

variable "principal_id" {
  description = "The principal ID to assign the AcrPull role to."
  type        = string
}