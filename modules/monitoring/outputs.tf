output "workspace_id" {
  description = "Log Analytics Workspace ID"
  value       = azurerm_log_analytics_workspace.monitoring.id
}

output "workspace_name" {
  description = "Log Analytics Workspace name"
  value       = azurerm_log_analytics_workspace.monitoring.name
}
