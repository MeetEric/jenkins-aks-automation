provider "azurerm" {
}

resource "azurerm_resource_group" "rg" {
    name = modules.config.name
    location = modules.config.location
}