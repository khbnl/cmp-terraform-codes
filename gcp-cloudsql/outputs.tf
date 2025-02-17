output "instance_connection_name" {
  value       = google_sql_database_instance.cloudsql_instance.connection_name
  description = "The connection name used by client applications to connect to the Cloud SQL instance."
}

output "instance_self_link" {
  value       = google_sql_database_instance.cloudsql_instance.self_link
  description = "The self-link URL of the Cloud SQL instance resource."
}

output "instance_public_ip" {
  value       = google_sql_database_instance.cloudsql_instance.ip_address[0].ip_address
  description = "The public IP address of the Cloud SQL instance."
}
