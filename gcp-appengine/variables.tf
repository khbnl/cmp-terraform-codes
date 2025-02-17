variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "location" {
  description = "The region where App Engine will be created (e.g., us-central1)."
  type        = string
  default     = "asia-east1"
}
