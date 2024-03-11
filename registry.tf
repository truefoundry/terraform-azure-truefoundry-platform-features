resource "azurerm_container_registry" "truefoundry_container_registry" {
  count                         = var.platform_feature_enabled ? var.feature_container_registry_enabled ? 1 : 0 : 0
  name                          = local.container_registry_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.container_registry_sku
  admin_enabled                 = var.container_registry_admin_enabled
  public_network_access_enabled = var.container_registry_public_network_access_enabled
  tags                          = local.tags
}

