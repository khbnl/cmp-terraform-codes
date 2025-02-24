locals {
  is_mssql = startswith(var.db_version, "SQLSERVER")
}

#resource "google_project_service" "cloudsql_api" {
#  project            = var.project_id
#  service            = "sqladmin.googleapis.com"
#  disable_on_destroy = false
#}

resource "google_sql_database_instance" "cloudsql_instance" {
  name                = var.name
  region              = var.location
  database_version    = var.db_version
  deletion_protection = false
  root_password       = var.db_password

  settings {
    tier = var.tier

    ip_configuration {
      ipv4_enabled = true
    }
  }

  depends_on = [google_project_service.cloudsql_api]
}

resource "google_sql_database" "cloudsql_db" {
  name     = var.db_name
  instance = google_sql_database_instance.cloudsql_instance.name
}

resource "google_sql_user" "cloudsql_user" {
  count    = local.is_mssql ? 0 : 1
  name     = var.db_user
  password = var.db_password
  instance = google_sql_database_instance.cloudsql_instance.name
}
