variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "cluster_name" {
  description = "AKS cluster name to monitor"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}
