variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "project_name" {
  description = "Name of the Google Cloud project."
  type        = string
}
variable "location" {
  description = "The region where App Engine will be created (e.g., us-central1)."
  type        = string
  default     = "asia-east1"
}

variable "gcp_private_key" { 
  type = string
  sensitive = true
} 

variable "gcp_cred" { 
  type = map 
  sensitive = true
} 

locals {
  credential = merge(var.gcp_cred, {private_key = "${var.gcp_private_key}"}) 
} 
