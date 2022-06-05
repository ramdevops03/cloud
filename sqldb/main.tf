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
   #location = "eastus2"
}

resource "azurerm_sql_server" "sqlsvr" {
  name                         = "session-sqlsvr"
  resource_group_name          = data.azurerm_resource_group.rg.name
  location                     = "eastus2"
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_sql_database" "sqldb" {
  name                = "session-sqldb"
  resource_group_name          = data.azurerm_resource_group.rg.name
  location                     = "eastus2"
  server_name         = azurerm_sql_server.sqlsvr.name
}