variable "location" {
  type        = string
  description = "Location/region where the resources will be created (e.g., 'eastus')."
  default     = "southeastasia"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the new or existing Azure Resource Group to hold the MySQL server."
  default     = "rg-mysql"
}

variable "server_name" {
  type        = string
  description = "Name of the Azure MySQL Flexible Server."
  default     = "my-mysql-server"
}

variable "mysql_version" {
  type        = string
  default     = "8.0.21"
  description = "MySQL version for the Flexible Server (e.g., '5.7' or '8.0.21')."
}

variable "sku_name" {
  type        = string
  default     = "B_Standard_B1ms"
  description = "Azure SKU name for compute resources (e.g., 'B_Standard_B1ms')."
}

variable "storage_gb" {
  type        = number
  description = "Storage size for the server in GB."
  default     = 20
}

variable "high_availability" {
  type        = bool
  default     = false
  description = "Enable or disable high availability (zone redundancy)."
}

variable "public_network_access_enabled" {
  type        = bool
  default     = true
  description = "Whether public network access is enabled for this server."
}

variable "administrator_login" {
  type        = string
  description = "Administrator username for the MySQL Flexible Server."
}

variable "administrator_password" {
  type        = string
  description = "Administrator password for the MySQL Flexible Server."
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
