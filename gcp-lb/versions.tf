terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.17"
    }
  }

  required_version = ">= 1.5.0"
}

provider "google" {
  credentials = jsonencode(local.credential)
  project     = var.project_id
}
