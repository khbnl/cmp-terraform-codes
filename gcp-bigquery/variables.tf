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
  description = "The region for the provider (e.g., us-central1)."
  default     = "asia-east1"
}

variable "dataset_id" {
  description = "The ID of the BigQuery dataset to be created"
  type        = string
  default     = "example_dataset"
}

variable "dataset_location" {
  description = "The location of the BigQuery dataset (e.g., US, EU)"
  type        = string
  default     = "US"
}

variable "table_id" {
  description = "The ID of the BigQuery table to be created within the dataset"
  type        = string
  default     = "example_table"
}
