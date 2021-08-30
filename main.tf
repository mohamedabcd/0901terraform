terraform {
    backend "azurerm" {
        resource_group_name = "RG-MOHAMED-ABCD"
        storage_account_name = "storageaccountmohamed"
        container_name = "tftf"
        key = "terraform.state"

    }
required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = ">= 1.2.0"
    }
  }
}


  # Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = var.resourceGroupName
  location = var.location
  
  tags = {
    environment = "ABCD"
}
}
