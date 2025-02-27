resource "google_project_service" "cloud_functions_api" {
  project            = var.project_id
  service            = "cloudfunctions.googleapis.com"
  disable_on_destroy = false
}

resource "google_cloudfunctions2_function" "function" {
  name     = var.function_name
  location = var.location

  build_config {
    runtime     = var.runtime
    entry_point = var.entry_point
    source {
      storage_source {
        bucket = var.bucket_name
        object = var.source_filename
      }
    }
  }

  depends_on = [google_project_service.cloud_functions_api]
}
