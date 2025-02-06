variable "location" {
  type        = string
  description = "Azure region in which to create the PostgreSQL server."
  default     = "southeastasia"
}

variable "create_new_resource_group" {
  description = "Flag to indicate whether to create a new resource group."
  type        = bool
  default     = false
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the storage account will be created."
  default = null

}

variable "existing_resource_group_name" {
  type        = string
  description = "Name of the existing resource group where the storage account will be created."
  default = null

}

variable "server_name" {
  type        = string
  description = "Name of the PostgreSQL server."
  default     = "my-postgresql-server"
}

variable "postgresql_version" {
  type        = string
  description = "PostgreSQL version (e.g., 15, 16)."
  default     = "16"
}

# Combine tier, family, and cores, e.g., GP_Standard_D4s_v3
variable "sku_name" {
  type        = string
  description = "Compute SKU name for PostgreSQL server."
  default     = "B_Standard_B1ms"
}

variable "storage_mb" {
  type        = number
  description = "Storage size for the server in MB."
  default     = 32768
}

variable "high_availability" {
  type        = bool
  description = "Enable or disable high availability (zone redundancy)."
  default     = false
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether public network access is enabled for this server."
  default     = true
}

variable "administrator_login" {
  type        = string
  description = "Administrator username for the PostgreSQL server."
}

variable "administrator_password" {
  type        = string
  description = "Administrator password for the PostgreSQL server."
  sensitive   = true
}

variable "azure_subscription_id" {
  type        = string
  description = "The Azure subscription ID to use."
}

variable "azure_tenant_id" {
  type        = string
  description = "The Azure tenant ID to use."
}

variable "azure_client_id" {
  type        = string
  description = "The Azure client ID to use."
}

variable "azure_client_secret" {
  type        = string
  description = "The Azure client secret to use."
  sensitive   = true
}
