output "load_balancer_ip" {
  description = "The IP address of the global external load balancer."
  value       = google_compute_global_address.global_ip.address
}
