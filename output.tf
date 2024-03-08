##################################################################################
## Blob Storage
##################################################################################

output "truefoundry_blob_storage_account_id" {
  value = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].id : ""
}

output "truefoundry_blob_storage_account_primary_location" {
  value = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].primary_location : ""
}

output "truefoundry_blob_storage_account_primary_blob_host" {
  value = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].primary_blob_host : ""
}

output "truefoundry_blob_storage_account_primary_web_host" {
  value = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].primary_web_host : ""
}

output "truefoundry_blob_storage_account_primary_connection_string" {
  value     = var.feature_blob_storage_enabled ? azurerm_storage_account.truefoundry_platform_storage_account[0].primary_connection_string : ""
  sensitive = true
}

output "truefoundry_blob_container_id" {
  value = var.feature_blob_storage_enabled ? azurerm_storage_container.truefoundry_platform_container[0].id : ""
}

output "truefoundry_blob_connection_string" {
  value = var.feature_blob_storage_enabled ? "https://${local.storage_account_name}.blob.core.windows.net/${local.container_name}/" : ""
}

##################################################################################
## Container registry
##################################################################################

output "truefoundry_container_registry_id" {
  value = var.feature_container_registry_enabled ? azurerm_container_registry.truefoundry_container_registry[0].id : ""
}

output "truefoundry_container_registry_login_server" {
  value = var.feature_container_registry_enabled ? azurerm_container_registry.truefoundry_container_registry[0].login_server : ""
}

output "truefoundry_container_registry_admin_username" {
  value = var.feature_container_registry_enabled ? azurerm_container_registry.truefoundry_container_registry[0].admin_username : ""
}

output "truefoundry_container_registry_admin_password" {
  value     = var.feature_container_registry_enabled ? azurerm_container_registry.truefoundry_container_registry[0].admin_password : ""
  sensitive = true
}

##################################################################################
## Cloud Integrations
##################################################################################

output "truefoundry_cloud_integrations_azuread_application_id" {
  value = var.feature_cloud_integration_enabled ? azuread_application.truefoundry_platform_features_application[0].id : ""
}

output "truefoundry_cloud_integrations_service_principal_name" {
  value     = var.feature_cloud_integration_enabled ? azuread_service_principal_password.truefoundry_platform_features_service_principal_password[0].value : ""
  sensitive = true
}

output "truefoundry_cloud_integrations_service_principal_tenant_id" {
  value = var.feature_cloud_integration_enabled ? azuread_service_principal.truefoundry_platform_features_service_principal[0].application_tenant_id : ""
}

output "truefoundry_cloud_integrations_service_principal_password" {
  value     = var.feature_cloud_integration_enabled ? azuread_service_principal_password.truefoundry_platform_features_service_principal_password[0].value : ""
  sensitive = true
}

output "truefoundry_cloud_integrations_azuread_application_name" {
  value = var.feature_cloud_integration_enabled ? local.cluster_name : ""
}