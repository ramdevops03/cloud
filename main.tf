#terraform {
#  required_providers {
#    azurerm = {
#      source = "hashicorp/azurerm"
#      version = "3.9.0"
#    }
#  }
#}

provider "azurerm" {
  skip_provider_registration = "true"
  #version = "=2.20.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "sample-session"
  location = "West Europe"
}
