provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rbac-sso-rg"
  location = "East US"
}
