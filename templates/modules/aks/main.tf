resource "azurerm_kubernetes_cluster" "aks_01" {
  name                              = var.aks_name
  location                          = var.location
  resource_group_name               = var.resource_group_name
  dns_prefix                        = var.aks_cluster_dns_prefix
  role_based_access_control_enabled = var.azure_rbac_enabled
  private_cluster_enabled           = var.aks_private_cluster_enabled
  local_account_disabled            = var.aks_local_account_disabled
  kubernetes_version                = var.aks_cluster_kubernetes_version
  sku_tier                          = var.aks_cluster_sku_tier
  workload_identity_enabled         = var.aks_workload_identity_enabled
  oidc_issuer_enabled               = var.aks_oidc_issuer_enabled


  azure_active_directory_role_based_access_control {
    admin_group_object_ids = var.aks_cluster_admin_group_object_ids
    tenant_id              = var.tenant_id
    azure_rbac_enabled     = var.azure_rbac_enabled
  }

  default_node_pool {
    name                         = var.aks_cluster_default_node_pool_name
    node_count                   = var.aks_cluster_default_node_pool_node_count
    vm_size                      = var.aks_cluster_default_node_pool_vm_size #"Standard_D2_v2"
    only_critical_addons_enabled = var.aks_cluster_default_node_pool_only_critical_addons_enabled
    temporary_name_for_rotation  = var.aks_cluster_default_node_pool_temporary_name_for_rotation
    orchestrator_version         = var.aks_cluster_kubernetes_version
    os_disk_size_gb              = var.aks_cluster_default_node_pool_os_disk_size_gb
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin      = var.aks_network_plugin
    network_plugin_mode = var.aks_network_plugin_mode
    network_policy      = var.aks_network_policy
    network_data_plane  = var.aks_network_data_plane
  }
}