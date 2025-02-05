locals {
  is_burstable_sku = can(regex("^B_", var.sku_name))
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_mysql_flexible_server" "mysql" {
  name                = var.server_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  version             = var.mysql_version

  sku_name = var.sku_name

  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password

  dynamic "high_availability" {
    for_each = var.high_availability && !local.is_burstable_sku ? [1] : []
    content {
      mode = "ZoneRedundant"
    }
  }

  storage {
    size_gb = var.storage_gb
  }
  
  lifecycle {
    ignore_changes = [
      zone,
      high_availability[0].standby_availability_zone,
    ]
  }
}

resource "azapi_resource_action" "mysql_set_public_access" {
  type        = "Microsoft.DBforMySQL/flexibleServers@2023-06-30"
  resource_id = azurerm_mysql_flexible_server.mysql.id
  method      = "PATCH"

  body = {
    properties = {
      network = {
        publicNetworkAccess = var.public_network_access_enabled ? "Enabled" : "Disabled"
      }
    }
  }

  depends_on = [
    azurerm_mysql_flexible_server.mysql,
  ]
}
