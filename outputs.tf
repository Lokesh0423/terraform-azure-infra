output "cluster_name" {
  description = "AKS cluster name"
  value       = module.aks.cluster_name
}

output "cluster_id" {
  description = "AKS cluster ID"
  value       = module.aks.cluster_id
}

output "vnet_id" {
  description = "Virtual Network ID"
  value       = module.vnet.vnet_id
}

output "workspace_name" {
  description = "Log Analytics Workspace name"
  value       = module.monitoring.workspace_name
}
