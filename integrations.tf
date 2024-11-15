module "integrations" {
  source = "git::https://github.com/truefoundry/terraform-truefoundry-integrations.git?ref=v0.1.0-rc.2"

  count = var.cluster_integration_enabled ? 1 : 0

  cluster_type      = "azure-aks"
  cluster_name      = var.cluster_name
  control_plane_url = var.control_plane_url

  tfy_api_key         = var.tfy_api_key
  trigger_helm_update = var.trigger_helm_update

  azure_subscription_id     = var.azure_subscription_id
  azure_resource_group_name = var.resource_group_name
  azure_cluster_integration_enabled = var.cluster_integration_enabled
  azure_client_id                   = var.azure_client_id
  azure_client_secret               = var.azure_client_secret
  azure_tenant_id                   = var.azure_tenant_id
  azure_acr_enabled                 = var.feature_container_registry_enabled
  azure_acr_admin_password          = var.container_registry_admin_password
  azure_acr_admin_username          = var.container_registry_admin_username
  azure_acr_login_server            = var.container_registry_login_server
  azure_storage_enabled             = var.feature_blob_storage_enabled
  azure_storage_connection_string   = var.blob_storage_account_connection_string
  azure_storage_root_url            = var.blob_storage_account_root_url
}
