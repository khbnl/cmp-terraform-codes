resource "google_project_service" "bigquery_api" {
  project            = var.project_id
  service            = "bigquery.googleapis.com"
  disable_on_destroy = false
}

resource "google_bigquery_dataset" "bigquery_dataset" {
  dataset_id = var.dataset_id
  location   = var.dataset_location

  depends_on = [google_project_service.bigquery_api]
}

resource "google_bigquery_table" "bigquery_table" {
  dataset_id = google_bigquery_dataset.bigquery_dataset.dataset_id
  table_id   = var.table_id

  deletion_protection = false
}
