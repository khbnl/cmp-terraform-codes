variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "location" {
  type        = string
  description = "The region where the Cloud SQL instance will be created (e.g., us-central1)."
  default     = "asia-east1"
}

variable "name" {
  description = "The Cloud SQL instance name."
  type        = string
}

variable "db_version" {
  description = "The database version (e.g., MYSQL_8_4, POSTGRES_16) for the instance."
  type        = string
}

variable "tier" {
  description = "The machine type tier for the instance (e.g., db-perf-optimized-N-2, db-custom-4-8192)."
  type        = string
}

variable "db_name" {
  description = "The initial database name to be created on the instance."
  type        = string
}

variable "db_user" {
  description = "The default database user to be created on the instance. Only applicable for MySQL and PostgreSQL."
  type        = string
}

variable "db_password" {
  type        = string
  description = "Password of the default database user. For MS SQL, it's the password of sqlserver user."
  sensitive   = true
}
