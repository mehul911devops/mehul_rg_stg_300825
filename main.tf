resource "azurerm_resource_group" "example" {
  name     = "mehulrg"
  location = "West Europe"
}


resource "azurerm_storage_account" "mehulstg" {
  name                     = "mehulstg24082025"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
