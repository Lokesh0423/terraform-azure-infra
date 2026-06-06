terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "vnet" {
  source              = "./modules/vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  vnet_name           = "vnet-${var.environment}"
  subnet_name         = "subnet-${var.environment}"
}

module "aks" {
  source              = "./modules/aks"
  cluster_name        = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  node_count          = var.node_count
  node_size           = var.node_size
  subnet_id           = module.vnet.subnet_id
  environment         = var.environment
}

module "monitoring" {
  source              = "./modules/monitoring"
  location            = var.location
  resource_group_name = var.resource_group_name
  cluster_name        = var.cluster_name
  environment         = var.environment
}
