output "app_engine_location" {
  description = "The location of the App Engine application."
  value       = google_app_engine_application.app.location_id
}

output "app_engine_project" {
  description = "The project ID of the App Engine application."
  value       = google_app_engine_application.app.project
}
