variable "location" {
  description = "Location for all resources in the module"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the AKS cluster will be created"
  type        = string
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "aks_cluster_dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "aks_cluster_kubernetes_version" {
  description = "Kubernetes version for the AKS cluster"
  type        = string
}

variable "tenant_id" {
  description = "Tenant ID for Azure Active Directory"
  type        = string
}

variable "aks_cluster_sku_tier" {
  description = "SKU tier for the AKS cluster"
  type        = string
}

variable "aks_cluster_default_node_pool_name" {
  description = "Name of the default node pool"
  type        = string
}

variable "aks_cluster_default_node_pool_node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
}

variable "aks_cluster_default_node_pool_vm_size" {
  description = "VM size for the default node pool"
  type        = string
}

variable "aks_cluster_default_node_pool_only_critical_addons_enabled" {
  description = "Enable only critical addons in the default node pool"
  type        = bool
}

variable "aks_cluster_default_node_pool_temporary_name_for_rotation" {
  description = "Temporary name for rotation in the default node pool"
  type        = string
}

variable "aks_cluster_default_node_pool_os_disk_size_gb" {
  description = "OS disk size in GB for the default node pool"
  type        = number
}

variable "aks_network_plugin" {
  description = "Network plugin for the AKS cluster"
  type        = string
}

variable "aks_network_plugin_mode" {
  description = "Network plugin mode for the AKS cluster"
  type        = string
}

variable "aks_network_policy" {
  description = "Network policy for the AKS cluster"
  type        = string
}

variable "aks_network_data_plane" {
  description = "Network data plane for the AKS cluster"
  type        = string
}

variable "azure_rbac_enabled" {
  description = "Enable Azure role-based access control for the AKS cluster"
  type        = bool
}

variable "aks_private_cluster_enabled" {
  description = "Enable private cluster for the AKS cluster"
  type        = bool
}

variable "aks_local_account_disabled" {
  description = "Disable local accounts for the AKS cluster"
  type        = bool
}

variable "aks_workload_identity_enabled" {
  description = "Enable workload identity for the AKS cluster"
  type        = bool
}

variable "aks_oidc_issuer_enabled" {
  description = "Enable OIDC issuer for the AKS cluster"
  type        = bool
}

variable "aks_cluster_admin_group_object_ids" {
  description = "List of Azure AD group object IDs for AKS cluster admin access"
  type        = list(string)
}