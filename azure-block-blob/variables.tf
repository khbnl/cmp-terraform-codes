variable "azure_subscription_id" {
  type        = string
  description = "Azure subscription ID to use."
  sensitive   = true
}

variable "azure_tenant_id" {
  type        = string
  description = "Azure tenant ID to use."
  sensitive   = true
}

variable "azure_client_id" {
  type        = string
  description = "Azure client ID to use."
  sensitive   = true
}

variable "azure_client_secret" {
  type        = string
  description = "Azure client secret to use."
  sensitive   = true
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

variable "location" {
  type        = string
  description = "The Azure region in which to create the storage account."
}

variable "storage_account_name" {
  type        = string
  description = "A global unique name for the new storage account."
}

variable "container_name" {
  type        = string
  description = "Name of the new container to create within the storage account."
}
