data "azurerm_resource_group" "rg" {
  count = var.create_new_resource_group ? 0 : 1
  name  = var.existing_resource_group_name
}
