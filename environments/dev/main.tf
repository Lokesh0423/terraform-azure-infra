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

module "dev_infrastructure" {
  source              = "../../"
  location            = var.location
  resource_group_name = var.resource_group_name
  cluster_name        = var.cluster_name
  node_count          = var.node_count
  node_size           = var.node_size
  environment         = var.environment
}
