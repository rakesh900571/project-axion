terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "RG-RAKESH"
    storage_account_name = "dev9005711880"
    container_name       = "tfstate"
    key                  = "preprod.tfstate"
   }
}

provider "azurerm" {
  features {}
}
