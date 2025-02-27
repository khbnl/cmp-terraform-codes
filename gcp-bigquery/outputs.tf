output "dataset_id" {
  description = "The ID of the created BigQuery dataset."
  value       = google_bigquery_dataset.bigquery_dataset.dataset_id
}

output "table_id" {
  description = "The ID of the created BigQuery table."
  value       = google_bigquery_table.bigquery_table.table_id
}
