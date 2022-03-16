
provider "azurerm" {
  features {}
}

module "teamAmodule" {
  source = "../ModuleforFirstDir"
  rnsaname = "team1"
}

/*module "teamAmodule" {
  source = "../ModuleforFirstDir"
  rg1name = var.rg1nameteamA
  rg2name = var.rg2nameteamA
}*/


/*resource "azurerm_resource_group" "rg1" {
  name     = var.rg1name
  location = "East US"
}


resource "azurerm_resource_group" "rg2" {
  name     = var.rg2name
  location = "East US"
}

resource "azurerm_storage_account" "sa1" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = "East US"
  name                     = "terrastorage1"
  resource_group_name      = azurerm_resource_group.rg1.name
}

resource "azurerm_storage_account" "sa2" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = "East US"
  name                     = "terrastorage2"
  resource_group_name      = azurerm_resource_group.rg2.name
}*/

/*
variable "rg1nameteamA" {
}

variable "rg2nameteamA" {
}
*/
output "firstdiroutputteamA" {
  value = module.teamAmodule.firstdiroutput
}
