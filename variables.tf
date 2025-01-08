################################################################################
# Global
################################################################################

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the storage account and container registry. This should be kept similar to resource group for ideal performance."
  type        = string
}

################################################################################
# Cluster
################################################################################

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "cluster_id" {
  description = "ID of the AKS cluster"
  type        = string
}

################################################################################
# Storage account
################################################################################

variable "feature_blob_storage_enabled" {
  description = "Enable blob storage feature in the platform"
  type        = bool
  default     = true
}

variable "blob_storage_account_enable_override" {
  description = "Enable overriding the name of storage account. This will only be used if feature_blob_storage_enabled is true. You need to pass blob_storage_account_override_name to pass the storage account name"
  type        = bool
  default     = false
}

variable "blob_storage_account_override_name" {
  description = "Storage account name. Only used if blob_storage_account_enable_override is true"
  type        = string
  default     = ""
  validation {
    condition     = var.blob_storage_account_override_name == "" || can(regex("^[a-z0-9]{3,24}$", var.blob_storage_account_override_name))
    error_message = "Storage account must be alphanumeric with length between 3 and 24 characters"
  }
}

variable "blob_container_enable_override" {
  description = "Enable overriding the name of container. This will only be used if feature_blob_storage_enabled is true. You need to pass container_override_name to pass the container name"
  type        = bool
  default     = false
}

variable "blob_container_override_name" {
  description = "Container name. Only used if container_enable_override is true"
  type        = string
  default     = ""
  validation {
    condition     = var.blob_container_override_name == "" || can(regex("^[a-z0-9-]{2,62}[a-z0-9]$", var.blob_container_override_name))
    error_message = "Container name must be alphanumeric with length between 3 and 63 characters"
  }
}

variable "blob_storage_account_account_tier" {
  description = "Account tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "blob_storage_account_replication_type" {
  description = "Replication type of storage account"
  type        = string
  default     = "GRS"
}

variable "blob_storage_cors_allowed_origins" {
  description = "List of allowed origin for CORS of storage account"
  type        = list(string)
  default     = ["*"]
}

variable "blob_storage_cors_allowed_methods" {
  description = "List of allowed methods for CORS of storage account"
  type        = list(string)
  default     = ["GET", "POST", "PUT"]
}

variable "blob_storage_cors_allowed_maxage" {
  description = "List of allowed maxage for CORS of storage account"
  type        = number
  default     = 3000
}

variable "blob_storage_cors_allowed_headers" {
  description = "List of allowed headers for CORS of storage account"
  type        = list(string)
  default     = ["*"]
}

variable "blob_storage_account_exposed_headers" {
  description = "List of exposed headers for CORS origins of storage account"
  type        = list(string)
  default     = ["Etag"]
}

################################################################################
# Docker registry
################################################################################

variable "feature_container_registry_enabled" {
  description = "Enable docker registry feature in the platform"
  type        = bool
  default     = true
}

variable "container_registry_enable_override" {
  description = "Enable overriding the name of container registry. This will only be used if feature_container_registry_enabled is true. You need to pass container_registry_override_name to pass the container registry name"
  type        = bool
  default     = false
}

variable "container_registry_override_name" {
  description = "Container registry name. Only used if container_registry_enable_override is true"
  type        = string
  default     = ""
  validation {
    condition     = var.container_registry_override_name == "" || can(regex("^[a-zA-Z0-9]{5,50}$", var.container_registry_override_name))
    error_message = "Container registry must be alphanumeric with length between 5 and 50 characters"
  }
}

variable "container_registry_sku" {
  description = "SKU of the docker registry"
  type        = string
  default     = "Standard"
}

variable "container_registry_admin_enabled" {
  description = "Enable admin for the docker registry"
  type        = bool
  default     = true
}

variable "container_registry_public_network_access_enabled" {
  description = "Whether public network access is allowed for the container registry"
  type        = bool
  default     = true
}

##################################################################################
## Cluster Integration
##################################################################################

variable "feature_cluster_integration_enabled" {
  description = "Enable the support of cluster integration"
  default     = true
  type        = bool
}

variable "cluster_integration_azuread_application_enable_override" {
  description = "Enable overriding the name of azuread application. This will only be used if feature_cluster_integration_azuread_application_enabled is true. You need to pass cluster_integration_azuread_application_override_name to pass the azuread application name"
  type        = bool
  default     = false
}

variable "cluster_integration_azuread_application_override_name" {
  description = "Azuread application name. Only used if cluster_integration_azuread_application_enable_override is true"
  type        = string
  default     = ""
  validation {
    condition     = var.cluster_integration_azuread_application_override_name == "" || can(regex("^[a-z0-9-]{0,119}[a-z0-9]$", var.cluster_integration_azuread_application_override_name))
    error_message = "Container name must be alphanumeric with length between 120 characters"
  }
}

variable "cluster_integration_sign_in_audience" {
  description = "sign_in_audience of the cluster integration"
  type        = string
  default     = "AzureADMyOrg"
}

variable "cluster_integration_service_principal_password_expiry_end_date" {
  description = "End date post which service principal password would expire"
  type        = string
  default     = "2124-02-12T09:42:53Z"
}

variable "cluster_integration_service_principal_role" {
  description = "Role that will be assigned to the service principal on AKS cluster"
  type        = string
  default     = "Reader"
}

variable "cluster_integration_diagnostic_settings_role" {
  description = "Role that will be assigned to the service principal on AKS cluster for diagnostic settings"
  type        = string
  default     = "Monitoring Reader"
}

##################################################################################
## Other variables
##################################################################################

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
