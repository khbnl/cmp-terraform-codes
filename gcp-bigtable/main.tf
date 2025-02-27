resource "google_project_service" "bigtable_api" {
  project            = var.project_id
  service            = "bigtable.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "bigtable_admin_api" {
  project            = var.project_id
  service            = "bigtableadmin.googleapis.com"
  disable_on_destroy = false
}

resource "google_bigtable_instance" "bigtable_instance" {
  name = var.bigtable_instance_name

  cluster {
    cluster_id   = "${var.bigtable_instance_name}-cluster"
    zone         = var.zone
    num_nodes    = var.num_nodes
    storage_type = var.storage_type
  }

  deletion_protection = false

  depends_on = [
    google_project_service.bigtable_api,
    google_project_service.bigtable_admin_api
  ]
}
