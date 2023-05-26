terraform {
  required_providers {
    azurerm{
        source = "hashicorp/azurerm"
        version = "3.57.0"
    }
  }
}

provider "azurerm" {
  
}

resource "azurerm_resource_group" "rg-name" {
  name = "ContosoResourceGroup"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  name = "CoreServicesVnet"
  location = "East US"
  resource_group_name = azurerm_resource_group.rg-name.name
  address_space = ["10.20.0.0/16"]
}

resource "azurerm_virtual_network" "vnet" {
  name = "ManufacturingVnet"
  location = "West Europe"
  resource_group_name = azurerm_resource_group.rg-name.name
  address_space = ["10.30.0.0/16"]
}
