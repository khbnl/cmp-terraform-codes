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

variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "location" {
  type        = string
  description = "The GCP region where the Cloud Function will be deployed (e.g., us-central1)."
  default     = "asia-east1"
}

variable "function_name" {
  description = "The name of the Cloud Function to be deployed."
  type        = string
  default     = "example-name"
}

variable "runtime" {
  description = "The runtime environment for the Cloud Function (e.g., nodejs22)."
  type        = string
  default     = "nodejs22"
}

variable "bucket_name" {
  description = "The name of the existing Cloud Storage bucket containing the function's source code."
  type        = string
}

variable "source_filename" {
  description = "The filename of the function's source code archive within the bucket."
  type        = string
}

variable "entry_point" {
  description = "The entry point of the function code to be executed."
  type        = string
}
