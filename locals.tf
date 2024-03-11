locals {
  cluster_name               = replace(replace(var.cluster_name, "-", ""), "_", "")
  storage_account_name       = var.blob_storage_account_enable_override ? var.blob_storage_account_override_name : "${substr(local.cluster_name, 0, 22)}sa"
  container_name             = var.blob_container_enable_override ? var.blob_container_override_name : "${substr(var.cluster_name, 0, 62)}cn"
  container_registry_name    = var.container_registry_enable_override ? var.container_registry_override_name : "${substr(local.cluster_name, 5, 47)}reg"
  azuread_application        = var.cloud_integration_azuread_application_enable_override ? var.cloud_integration_azuread_application_override_name : "${substr(var.cluster_name, 0, 117)}app"
  service_principal_password = "${local.cluster_name}sp"
  tags = merge(
    {
      "terraform-module" = "platform-features"
      "terraform"        = "true"
      "cluster-name"     = var.cluster_name
      "truefoundry"      = "managed"
    },
  var.tags)
}