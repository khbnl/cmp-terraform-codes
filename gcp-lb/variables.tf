variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "instance_group_zone" {
  description = "The zone of an existing compute instance group to be used as the backend for the load balancer."
  type        = string
  default     = "asia-east1-a"
}

variable "instance_group_name" {
  description = "The name of an existing compute instance group to be used as the backend for the load balancer."
  type        = string
}

variable "lb_global_address_name" {
  description = "Name of the global IP address resource for the load balancer."
  type        = string
  default     = "example-global-address"
}

variable "health_check_name" {
  description = "Name of the health check resource."
  type        = string
  default     = "example-health-check"
}

variable "health_check_port" {
  description = "Port for the health check."
  type        = number
  default     = 80
}

variable "backend_service_name" {
  description = "Name of the backend service resource."
  type        = string
  default     = "example-backend-service"
}

variable "url_map_name" {
  description = "Name of the URL map resource."
  type        = string
  default     = "example-url-map"
}

variable "target_http_proxy_name" {
  description = "Name of the target HTTP proxy resource."
  type        = string
  default     = "example-http-proxy"
}

variable "forwarding_rule_name" {
  description = "Name of the forwarding rule resource."
  type        = string
  default     = "example-forwarding-rule"
}

variable "forwarding_rule_port_range" {
  description = "Port range for the forwarding rule."
  type        = string
  default     = "80"
}

variable "gcp_credentials" {
  description = "The GCP service account credentials."
  type        = string
  sensitive   = true
}
