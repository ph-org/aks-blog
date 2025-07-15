resource_group_name = "aks-test-rg"
location            = "westeurope"


# Azure Container Registry configuration
acr_name          = "akstestacrph02"
acr_sku           = "Basic"
acr_admin_enabled = false

# AKS cluster configuration
aks_cluster_name                                           = "aks-test-cluster"
aks_cluster_dns_prefix                                     = "akstestdns"
aks_cluster_kubernetes_version                             = "1.31.2"
aks_cluster_sku_tier                                       = "Standard"
aks_cluster_default_node_pool_name                         = "default"
aks_cluster_default_node_pool_node_count                   = 1
aks_cluster_default_node_pool_vm_size                      = "Standard_D2_v2"
aks_cluster_default_node_pool_only_critical_addons_enabled = true
aks_cluster_default_node_pool_temporary_name_for_rotation  = "defaultpool"
aks_cluster_default_node_pool_os_disk_size_gb              = 30
aks_network_plugin                                         = "azure"
aks_network_plugin_mode                                    = "overlay"
aks_network_policy                                         = "cilium"
aks_network_data_plane                                     = "cilium"
azure_rbac_enabled                                         = true
aks_private_cluster_enabled                                = false
aks_local_account_disabled                                 = false
aks_workload_identity_enabled                              = true
aks_oidc_issuer_enabled                                    = true
aks_cluster_admin_group_object_ids                         = [""]