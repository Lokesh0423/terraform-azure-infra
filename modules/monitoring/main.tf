resource "azurerm_log_analytics_workspace" "monitoring" {
  name                = "law-${var.cluster_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30

  tags = {
    Environment = var.environment
  }
}

resource "azurerm_monitor_action_group" "alerts" {
  name                = "ag-${var.cluster_name}"
  resource_group_name = var.resource_group_name
  short_name          = "aksalerts"
}

resource "azurerm_monitor_metric_alert" "cpu_alert" {
  name                = "cpu-alert-${var.cluster_name}"
  resource_group_name = var.resource_group_name
  scopes              = ["/subscriptions/00000000-0000-0000-0000-000000000000"]
  severity            = 2

  criteria {
    metric_namespace = "Microsoft.ContainerService/managedClusters"
    metric_name      = "node_cpu_usage_percentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }

  action {
    action_group_id = azurerm_monitor_action_group.alerts.id
  }
}
