output "mysql_server_name" {
  description = "The name of the Azure MySQL Flexible Server."
  value       = azurerm_mysql_flexible_server.mysql.name
}

output "mysql_server_fqdn" {
  description = "The fully qualified domain name of the MySQL Flexible Server."
  value       = azurerm_mysql_flexible_server.mysql.fqdn
}

output "mysql_version" {
  description = "The Mysql version running on the server."
  value       = azurerm_mysql_flexible_server.mysql.version
}
