data "azurerm_resource_group" "rg" {
  count = var.create_new_resource_group ? 0 : 1
  name  = var.resource_group_name
}
