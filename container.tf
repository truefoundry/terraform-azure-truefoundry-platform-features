resource "azurerm_storage_account" "truefoundry_platform_storage_account" {
  count                         = var.feature_blob_storage_enabled ? 1 : 0
  name                          = local.storage_account_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  account_tier                  = var.blob_storage_account_account_tier
  account_replication_type      = var.blob_storage_account_replication_type
  access_tier                   = "Hot"
  min_tls_version               = "TLS1_2"
  public_network_access_enabled = true

  blob_properties {
    cors_rule {
      allowed_headers    = var.blob_storage_cors_allowed_headers
      allowed_methods    = var.blob_storage_cors_allowed_methods
      allowed_origins    = var.blob_storage_cors_allowed_origins
      exposed_headers    = var.blob_storage_account_exposed_headers
      max_age_in_seconds = var.blob_storage_cors_allowed_maxage
    }
  }

  infrastructure_encryption_enabled = true


  tags = local.tags
}

resource "azurerm_storage_container" "truefoundry_platform_container" {
  count                = var.feature_blob_storage_enabled ? 1 : 0
  name                 = local.container_name
  storage_account_name = azurerm_storage_account.truefoundry_platform_storage_account[0].name
}
