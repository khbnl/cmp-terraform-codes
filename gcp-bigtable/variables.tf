variable "gcp_credentials" {
  description = "The GCP service account credentials."
  type        = string
  sensitive   = true
}

variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "location" {
  type        = string
  description = "The region for the provider (e.g., us-central1)."
  default     = "asia-east1"
}

variable "zone" {
  description = "The zone where the Bigtable cluster will be deployed."
  type        = string
  default     = "asia-east1-a"
}

variable "bigtable_instance_name" {
  description = "The name of the Bigtable instance."
  type        = string
}

variable "num_nodes" {
  description = "The number of nodes for the Bigtable cluster."
  type        = number
}

variable "storage_type" {
  description = "The storage type for the Bigtable cluster (SSD or HDD)."
  type        = string
  default     = "SSD"
}
