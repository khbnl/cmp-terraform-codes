resource "google_compute_global_address" "global_ip" {
  name = var.lb_global_address_name
}

resource "google_compute_health_check" "health_check" {
  name = var.health_check_name

  http_health_check {
    port = var.health_check_port
  }
}

resource "google_compute_backend_service" "backend_service" {
  name                  = var.backend_service_name
  protocol              = "HTTP"
  port_name             = "http"
  load_balancing_scheme = "EXTERNAL_MANAGED"

  health_checks = [
    google_compute_health_check.health_check.self_link
  ]

  backend {
    group = data.google_compute_instance_group.backend_group.self_link
  }
}

resource "google_compute_url_map" "url_map" {
  name            = var.url_map_name
  default_service = google_compute_backend_service.backend_service.self_link
}

resource "google_compute_target_http_proxy" "http_proxy" {
  name    = var.target_http_proxy_name
  url_map = google_compute_url_map.url_map.self_link
}

resource "google_compute_global_forwarding_rule" "forwarding_rule" {
  name                  = var.forwarding_rule_name
  target                = google_compute_target_http_proxy.http_proxy.self_link
  port_range            = var.forwarding_rule_port_range
  ip_address            = google_compute_global_address.global_ip.address
  load_balancing_scheme = "EXTERNAL_MANAGED"
}

resource "google_compute_instance_group_named_port" "backend_named_port" {
  group = data.google_compute_instance_group.backend_group.name
  zone  = var.instance_group_zone
  name  = "http"
  port  = 80
}
