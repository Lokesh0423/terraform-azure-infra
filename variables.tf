variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "germanywestcentral"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "rg-devops-prod"
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "aks-devops-cluster"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 2
}

variable "node_size" {
  description = "Size of each node in the cluster"
  type        = string
  default     = "Standard_D2_v2"
}

variable "environment" {
  description = "Environment name - dev or prod"
  type        = string
  default     = "dev"
}
