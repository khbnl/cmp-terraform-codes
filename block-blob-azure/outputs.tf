output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.storage_account.name
}

output "storage_account_primary_endpoint" {
  description = "The primary Blob endpoint for the storage account."
  value       = azurerm_storage_account.storage_account.primary_blob_endpoint
}

output "container_name" {
  description = "The name of the newly created storage container."
  value       = azurerm_storage_container.container.name
}
