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

data "azurerm_resource_group" "example" {
   name     = "session-weu"
   location = "West Europe"
}

# resource "azurerm_app_service_plan" "example" {
#   name                = "session-asp"
#   location            = ""
#   resource_group_name = azurerm_resource_group.example.name

#   sku {
#     tier = "Standard"
#     size = "S1"
#   }
# }

# resource "azurerm_app_service" "example" {
#   name                = "example-app-service"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   app_service_plan_id = azurerm_app_service_plan.example.id

#   site_config {
#     dotnet_framework_version = "v4.0"
#     scm_type                 = "LocalGit"
#   }

#   app_settings = {
#     "SOME_KEY" = "some-value"
#   }

#   connection_string {
#     name  = "Database"
#     type  = "SQLServer"
#     value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
#   }
# }
