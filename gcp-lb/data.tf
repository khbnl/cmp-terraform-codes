data "google_compute_instance_group" "backend_group" {
  name = var.instance_group_name
  zone = var.instance_group_zone
}
