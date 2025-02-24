resource "google_project_service" "app_engine_api" {
  #project = var.project
  service = "appengine.googleapis.com"
  disable_on_destroy = false
}

resource "google_project" "my_project" {
  name       = var.project_name
  project_id = var.project_id
}

resource "google_app_engine_application" "app" {
  project     = google_project.my_project.project_id
  location_id = var.location
}
