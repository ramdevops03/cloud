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

data "azurerm_resource_group" "rg" {
   name     = "session-rg"
}

resource "azurerm_app_service_plan" "asp" {
   name                = "session-asp"
   location            = "eastus2"
   resource_group_name = data.azurerm_resource_group.rg.name

   sku {
     tier = "Standard"
     size = "S1"
  }
}

resource "azurerm_app_service" "as" {
   name                = "session-as"
   location            = "eastus2"
   resource_group_name = data.azurerm_resource_group.rg.name
   app_service_plan_id = azurerm_app_service_plan.asp.id
}