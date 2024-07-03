resource "azuread_application" "truefoundry_platform_features_application" {
  count            = var.platform_feature_enabled ? var.feature_cluster_integration_enabled ? 1 : 0 : 0
  display_name     = local.azuread_application
  sign_in_audience = var.cluster_integration_sign_in_audience
}

resource "azuread_service_principal" "truefoundry_platform_features_service_principal" {
  count     = var.platform_feature_enabled ? var.feature_cluster_integration_enabled ? 1 : 0 : 0
  client_id = azuread_application.truefoundry_platform_features_application[0].client_id
}

resource "azuread_service_principal_password" "truefoundry_platform_features_service_principal_password" {
  count                = var.platform_feature_enabled ? var.feature_cluster_integration_enabled ? 1 : 0 : 0
  service_principal_id = azuread_service_principal.truefoundry_platform_features_service_principal[0].object_id
  display_name         = local.service_principal_password
  end_date             = var.cluster_integration_service_principal_password_expiry_end_date
}

resource "azurerm_role_assignment" "truefoundry_reader_role_assignment" {
  count                = var.platform_feature_enabled ? var.feature_cluster_integration_enabled ? 1 : 0 : 0
  scope                = var.cluster_id
  role_definition_name = var.cluster_integration_service_principal_role
  principal_id         = azuread_service_principal.truefoundry_platform_features_service_principal[0].object_id
}
