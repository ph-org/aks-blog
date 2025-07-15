data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg-aks-test" {
  name     = var.resource_group_name
  location = var.location
}

module "aks" {
  source = "./modules/aks"

  resource_group_name = resource.azurerm_resource_group.rg-aks-test.name
  location            = var.location

  aks_name                                                   = var.aks_cluster_name
  aks_cluster_dns_prefix                                     = var.aks_cluster_dns_prefix
  aks_cluster_kubernetes_version                             = var.aks_cluster_kubernetes_version
  tenant_id                                                  = data.azurerm_client_config.current.tenant_id
  aks_cluster_sku_tier                                       = var.aks_cluster_sku_tier
  aks_cluster_default_node_pool_name                         = var.aks_cluster_default_node_pool_name
  aks_cluster_default_node_pool_node_count                   = var.aks_cluster_default_node_pool_node_count
  aks_cluster_default_node_pool_vm_size                      = var.aks_cluster_default_node_pool_vm_size
  aks_cluster_default_node_pool_only_critical_addons_enabled = var.aks_cluster_default_node_pool_only_critical_addons_enabled
  aks_cluster_default_node_pool_temporary_name_for_rotation  = var.aks_cluster_default_node_pool_temporary_name_for_rotation
  aks_cluster_default_node_pool_os_disk_size_gb              = var.aks_cluster_default_node_pool_os_disk_size_gb
  aks_network_plugin                                         = var.aks_network_plugin
  aks_network_plugin_mode                                    = var.aks_network_plugin_mode
  aks_network_policy                                         = var.aks_network_policy
  aks_network_data_plane                                     = var.aks_network_data_plane
  azure_rbac_enabled                                         = var.azure_rbac_enabled
  aks_private_cluster_enabled                                = var.aks_private_cluster_enabled
  aks_local_account_disabled                                 = var.aks_local_account_disabled
  aks_workload_identity_enabled                              = var.aks_workload_identity_enabled
  aks_oidc_issuer_enabled                                    = var.aks_oidc_issuer_enabled
  aks_cluster_admin_group_object_ids                         = var.aks_cluster_admin_group_object_ids
}

module "acr" {
  source = "./modules/acr"

  resource_group_name = azurerm_resource_group.rg-aks-test.name
  location            = var.location
  acr_sku             = var.acr_sku
  acr_admin_enabled   = var.acr_admin_enabled
  principal_id        = module.aks.principal_id
  acr_name            = var.acr_name
}

