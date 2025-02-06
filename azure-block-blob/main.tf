resource "azurerm_resource_group" "rg" {
  count = var.create_new_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  ##resource_group_name      = azurerm_resource_group.rg.name
  resource_group_name = var.create_new_resource_group ? azurerm_resource_group.rg[0].name : data.azurerm_resource_group.rg[0].name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "container" {
  name               = var.container_name
  storage_account_id = azurerm_storage_account.storage_account.id
}
