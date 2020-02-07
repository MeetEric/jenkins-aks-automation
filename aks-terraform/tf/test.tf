provider "azurerm" {
}

resource "azurerm_resource_group" "rg" {
        name = "ericmai-tf-test"
        location = "westus"
}