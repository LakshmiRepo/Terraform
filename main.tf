
resource "azurerm_resource_group" "rg2" {
  name     = "${var.rnsaname}rg2"
  location = "East US"
}


resource "azurerm_storage_account" "sa1" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = "East US"
 /* name                     = "terrastorage1"*/
  name                     = "${var.rnsaname}sta1"
  resource_group_name      = azurerm_resource_group.rg1.name
}



resource "azurerm_storage_account" "sa2" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = "East US"
  name                     = "${var.rnsaname}sta2"
  resource_group_name      = azurerm_resource_group.rg2.name

}
