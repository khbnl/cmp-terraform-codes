output "postgres_server_name" {
  description = "The name of the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.postgres.name
}

output "postgres_server_fqdn" {
  description = "The FQDN of the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.postgres.fqdn
}

output "postgresql_version" {
  description = "The PostgreSQL version running on the server"
  value       = azurerm_postgresql_flexible_server.postgres.version
}
