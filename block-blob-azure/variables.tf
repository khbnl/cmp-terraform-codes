variable "azure_subscription_id" {
  type        = string
  description = "Azure subscription ID to use."
}

variable "azure_tenant_id" {
  type        = string
  description = "Azure tenant ID to use."
}

variable "azure_client_id" {
  type        = string
  description = "Azure client ID to use."
}

variable "azure_client_secret" {
  type        = string
  description = "Azure client secret to use."
  sensitive   = true
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the storage account will be created."
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
