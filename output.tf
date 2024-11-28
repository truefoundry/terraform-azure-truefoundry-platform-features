##################################################################################
## Blob Storage
##################################################################################
output "truefoundry_blob_storage_account_enabled" {
  value       = var.feature_blob_storage_enabled
  description = "Flag to enable blob storage account"
}

output "truefoundry_blob_storage_account_id" {
  value       = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].id : ""
  description = "Storage account id"
}

output "truefoundry_blob_storage_account_primary_location" {
  value       = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].primary_location : ""
  description = "Storage account primary location"
}

output "truefoundry_blob_storage_account_primary_blob_host" {
  value       = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].primary_blob_host : ""
  description = "Storage account primary blob host"
}

output "truefoundry_blob_storage_account_primary_web_host" {
  value       = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].primary_web_host : ""
  description = "Storage account primary web host url"
}

output "truefoundry_blob_storage_account_primary_connection_string" {
  value       = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].primary_connection_string : ""
  sensitive   = true
  description = "Storage account primary connection string"
}

output "truefoundry_blob_container_id" {
  value       = var.feature_blob_storage_enabled ? azurerm_storage_container.truefoundry_platform_container[0].id : ""
  description = "Storage account container ID"
}

output "truefoundry_blob_storage_root_url" {
  value       = var.feature_blob_storage_enabled ? "https://${local.storage_account_name}.blob.core.windows.net/${local.container_name}/" : ""
  description = "Storage account root URL for blob storage"
}

##################################################################################
## Container registry
##################################################################################

output "truefoundry_container_registry_enabled" {
  value       = var.feature_container_registry_enabled
  description = "Flag to enable container registry"
}

output "truefoundry_container_registry_id" {
  value       = var.feature_container_registry_enabled ? azurerm_container_registry.truefoundry_container_registry[0].id : ""
  description = "Container registry ID"
}

output "truefoundry_container_registry_login_server" {
  value       = var.feature_container_registry_enabled ? azurerm_container_registry.truefoundry_container_registry[0].login_server : ""
  description = "Container registry login server url"
}

output "truefoundry_container_registry_admin_username" {
  value       = var.feature_container_registry_enabled ? azurerm_container_registry.truefoundry_container_registry[0].admin_username : ""
  description = "Container registry admin username"
}

output "truefoundry_container_registry_admin_password" {
  value       = var.feature_container_registry_enabled ? azurerm_container_registry.truefoundry_container_registry[0].admin_password : ""
  sensitive   = true
  description = "Container registry admin password"
}

##################################################################################
## Cluster Integrations
##################################################################################

output "truefoundry_cluster_integrations_enabled" {
  value       = var.feature_cluster_integration_enabled
  description = "Flag to enable cluster integrations"
}

output "truefoundry_cluster_integrations_azuread_application_id" {
  value       = var.feature_cluster_integration_enabled ? azuread_application.truefoundry_platform_features_application[0].id : ""
  description = "Azure AD application ID"
}

output "truefoundry_cluster_integrations_azuread_application_client_id" {
  value       = var.feature_cluster_integration_enabled ? azuread_application.truefoundry_platform_features_application[0].client_id : ""
  description = "Azure AD application client ID"
}

output "truefoundry_cluster_integrations_service_principal_name" {
  value     = var.feature_cluster_integration_enabled ? azuread_service_principal_password.truefoundry_platform_features_service_principal_password[0].value : ""
  sensitive = true
}

output "truefoundry_cluster_integrations_service_principal_tenant_id" {
  value = var.feature_cluster_integration_enabled ? azuread_service_principal.truefoundry_platform_features_service_principal[0].application_tenant_id : ""
}

output "truefoundry_cluster_integrations_service_principal_password" {
  value     = var.feature_cluster_integration_enabled ? azuread_service_principal_password.truefoundry_platform_features_service_principal_password[0].value : ""
  sensitive = true
}

output "truefoundry_cluster_integrations_azuread_application_name" {
  value = var.feature_cluster_integration_enabled ? local.cluster_name : ""
}