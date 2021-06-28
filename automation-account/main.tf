provider "azurerm" {
  features {}
}

## this will create a new resource group
# resource "azurerm_resource_group" "rg" {
#   name     = "${var.prefix}-resources"
#   location = var.location
# }

## this will not create new resource group
#data "azurerm_resource_group" "rg" {
#  name = "RG-BSTest"
#}

resource "azurerm_automation_account" "aac" {
  name                = "${var.prefix}-autoacc"
  location            = var.location
  resource_group_name = var.rgname

  sku_name = "Basic"

  tags = {
    environment = "development"
  }

}
