variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}
variable "location" {
  description = "Azure region"
  type        = string
}
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}
variable "node_count" {
  description = "Number of nodes in the cluster"
  type        = number
  default     = 2
}
variable "node_size" {
  description = "Size of each node"
  type        = string
  default     = "Standard_D2_v2"
}
variable "subnet_id" {
  description = "Subnet ID from VNet module"
  type        = string
}
variable "environment" {
  description = "Environment name"
  type        = string
}
