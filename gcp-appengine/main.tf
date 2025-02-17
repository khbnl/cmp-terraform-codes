resource "google_project_service" "app_engine_api" {
  project = var.project_id
  service = "appengine.googleapis.com"
  disable_on_destroy = false
}

resource "google_app_engine_application" "app" {
  project     = var.project_id
  location_id = var.location
}
