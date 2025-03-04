locals {
  is_burstable_sku = can(regex("^B_", var.sku_name))
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  count = var.create_new_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.location
}

# PostgreSQL Flexible Server
resource "azurerm_postgresql_flexible_server" "postgres" {
  name                = var.server_name
  resource_group_name = var.create_new_resource_group ? azurerm_resource_group.rg[0].name : data.azurerm_resource_group.rg[0].name
  location            = var.location

  version                       = var.postgresql_version
  administrator_login           = var.administrator_login
  administrator_password        = var.administrator_password
  sku_name                      = var.sku_name
  storage_mb                    = var.storage_mb
  public_network_access_enabled = var.public_network_access_enabled

  dynamic "high_availability" {
    for_each = var.high_availability && !local.is_burstable_sku ? [1] : []
    content {
      mode = "ZoneRedundant"
    }
  }
}
