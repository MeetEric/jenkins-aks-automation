input "config" {
    type = object({
        name = string
        location = string
    })
}

provider "azurerm" {
}

resource "azurerm_resource_group" "rg" {
    name = var.config.name
    location = var.config.location
}