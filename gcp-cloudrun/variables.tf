variable "project_id" {
  type        = string
  description = "The ID of the Google Cloud project."
}

variable "location" {
  type        = string
  description = "The region where Cloud Run service will be created (e.g., us-central1)."
  default     = "asia-east1"
}

variable "name" {
  type        = string
  description = "Name of the Cloud Run service."
}

variable "cpu" {
  type        = number
  description = "Number of CPUs to allocate. e.g. 1, 2 etc."
}

variable "memory" {
  type        = string
  description = "Memory to allocate, e.g. 512Mi, 1Gi, etc."
}

variable "image" {
  type        = string
  description = "Container image to deploy, e.g. gcr.io/my-project/my-image:tag"
}
