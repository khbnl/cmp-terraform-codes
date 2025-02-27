output "bigtable_instance_name" {
  description = "The name of the provisioned Bigtable instance."
  value       = google_bigtable_instance.bigtable_instance.name
}
