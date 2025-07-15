variable "resource_group_name" {
  description = "The name of the resource group where the AKS cluster will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the Azure Kubernetes Service cluster."
  type        = string
}

variable "aks_cluster_sku_tier" {
  description = "The SKU for the Azure Container Registry."
  type        = string
}


variable "acr_admin_enabled" {
  description = "Whether to enable the admin user for the Azure Container Registry."
  type        = bool
  default     = false
}


variable "aks_cluster_dns_prefix" {
  description = "The DNS prefix for the Azure Kubernetes Service cluster."
  type        = string
}

variable "aks_cluster_kubernetes_version" {
  description = "The Kubernetes version for the Azure Kubernetes Service cluster."
  type        = string
}


variable "aks_cluster_default_node_pool_name" {
  description = "The name of the default node pool for the Azure Kubernetes Service cluster."
  type        = string
}

variable "aks_cluster_default_node_pool_node_count" {
  description = "The number of nodes in the default node pool for the Azure Kubernetes Service cluster."
  type        = number
}

variable "aks_cluster_default_node_pool_vm_size" {
  description = "The VM size for the default node pool of the Azure Kubernetes Service cluster."
  type        = string
  default     = "Standard_D2_v2"
}

variable "aks_cluster_default_node_pool_only_critical_addons_enabled" {
  description = "Whether to enable only critical addons in the default node pool of the Azure Kubernetes Service cluster."
  type        = bool
}

variable "aks_cluster_default_node_pool_temporary_name_for_rotation" {
  description = "Temporary name for rotation in the default node pool of the Azure Kubernetes Service cluster."
  type        = string
}

variable "aks_cluster_default_node_pool_os_disk_size_gb" {
  description = "The OS disk size in GB for the default node pool of the Azure Kubernetes Service cluster."
  type        = number
}

variable "aks_network_plugin" {
  description = "The network plugin to use for the Azure Kubernetes Service cluster."
  type        = string
}

variable "aks_network_plugin_mode" {
  description = "The network plugin mode for the Azure Kubernetes Service cluster."
  type        = string
}

variable "aks_network_policy" {
  description = "The network policy to use for the Azure Kubernetes Service cluster."
  type        = string
}

variable "aks_network_data_plane" {
  description = "The network data plane to use for the Azure Kubernetes Service cluster."
  type        = string
}

variable "azure_rbac_enabled" {
  description = "Whether to enable Azure RBAC for the AKS cluster."
  type        = bool
}

variable "aks_private_cluster_enabled" {
  description = "Whether to enable private cluster for the AKS cluster."
  type        = bool
}

variable "aks_local_account_disabled" {
  description = "Whether to disable local accounts for the AKS cluster."
  type        = bool
}

variable "aks_workload_identity_enabled" {
  description = "Whether to enable workload identity for the AKS cluster."
  type        = bool
}

variable "aks_oidc_issuer_enabled" {
  description = "Whether to enable OIDC issuer for the AKS cluster."
  type        = bool
}

variable "acr_sku" {
  description = "The SKU for the Azure Container Registry."
  type        = string
}

variable "aks_cluster_admin_group_object_ids" {
  description = "List of Azure AD group object IDs that will have admin access to the AKS cluster."
  type        = list(string)
}








