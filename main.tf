terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "checking3"
    container_name       = "rakho"
    
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f96f2e3b-2cc8-4e5e-8ed9-4afb664bb5a8"
}
resource "azurerm_resource_group" "rg1" {
  name     = "coolrg"
  location = "East US"
}

resource "azurerm_resource_group" "rg2" {
  name     = "hoolrg"
  location = "West Europe"
}