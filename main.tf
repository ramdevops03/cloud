provider "azurerm" {
  version = "=2.20.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "sample-session"
  location = "West Europe"
}
