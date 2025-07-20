output "client_certificate" {
  value     = azurerm_kubernetes_cluster.aks_01.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks_01.kube_config_raw
  sensitive = true
}

output "principal_id" {
  value = azurerm_kubernetes_cluster.aks_01.kubelet_identity[0].object_id
}