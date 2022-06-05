provider "azurerm" {
  skip_provider_registration = "true"
  #version = "=2.20.0"
  features {}
}

resource "azurerm_resource_group" "rg" {
   name     = "session-rg"
   location = "eastus2"
}