provider "azurerm" {
  version = "~> 2.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "sportspanstorage-tf-rg"
    storage_account_name = "sportspanstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

data "azurerm_client_config" "current" {}