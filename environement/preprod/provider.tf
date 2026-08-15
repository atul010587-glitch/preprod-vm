terraform {
  required_providers {
    azurerm = {
      version = "5.0.1"
      source  = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
    resource_group_name  = "preprod-rg"
    storage_account_name = "storage242630account"
    container_name       = "preprod-tfstate"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}