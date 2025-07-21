terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  # Configuration options

    subscription_id = "e8ad8a11-5e89-4545-9309-27ed1a0cd62f"
}

resource "azurerm_resource_group" "rg1" {
  name     = "sami121"
  location = "West Europe"
}

resource "azurerm_storage_account" "sa1" {
  name                     = "samistorage"
  resource_group_name      = azurm_resource_group.rg1.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}