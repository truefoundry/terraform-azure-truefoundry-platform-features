# truefoundry-azure-platform-features
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | >= 3.0.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.107.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | >= 3.0.2 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.107.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application.truefoundry_platform_features_application](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [azuread_service_principal.truefoundry_platform_features_service_principal](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |
| [azuread_service_principal_password.truefoundry_platform_features_service_principal_password](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password) | resource |
| [azurerm_container_registry.truefoundry_container_registry](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_role_assignment.truefoundry_reader_role_assignment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_storage_account.truefoundry_platform_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.truefoundry_platform_container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_blob_container_enable_override"></a> [blob\_container\_enable\_override](#input\_blob\_container\_enable\_override) | Enable overriding the name of container. This will only be used if feature\_blob\_storage\_enabled is true. You need to pass container\_override\_name to pass the container name | `bool` | `true` | no |
| <a name="input_blob_container_override_name"></a> [blob\_container\_override\_name](#input\_blob\_container\_override\_name) | Container name. Only used if container\_enable\_override is true | `string` | `""` | no |
| <a name="input_blob_storage_account_account_tier"></a> [blob\_storage\_account\_account\_tier](#input\_blob\_storage\_account\_account\_tier) | Account tier of the storage account | `string` | `"Standard"` | no |
| <a name="input_blob_storage_account_enable_override"></a> [blob\_storage\_account\_enable\_override](#input\_blob\_storage\_account\_enable\_override) | Enable overriding the name of storage account. This will only be used if feature\_blob\_storage\_enabled is true. You need to pass blob\_storage\_account\_override\_name to pass the storage account name | `bool` | `false` | no |
| <a name="input_blob_storage_account_exposed_headers"></a> [blob\_storage\_account\_exposed\_headers](#input\_blob\_storage\_account\_exposed\_headers) | List of exposed headers for CORS origins of storage account | `list(string)` | <pre>[<br/>  "Etag"<br/>]</pre> | no |
| <a name="input_blob_storage_account_override_name"></a> [blob\_storage\_account\_override\_name](#input\_blob\_storage\_account\_override\_name) | Storage account name. Only used if blob\_storage\_account\_enable\_override is true | `string` | `""` | no |
| <a name="input_blob_storage_account_replication_type"></a> [blob\_storage\_account\_replication\_type](#input\_blob\_storage\_account\_replication\_type) | Replication type of storage account | `string` | `"GRS"` | no |
| <a name="input_blob_storage_cors_allowed_headers"></a> [blob\_storage\_cors\_allowed\_headers](#input\_blob\_storage\_cors\_allowed\_headers) | List of allowed headers for CORS of storage account | `list(string)` | <pre>[<br/>  "*"<br/>]</pre> | no |
| <a name="input_blob_storage_cors_allowed_maxage"></a> [blob\_storage\_cors\_allowed\_maxage](#input\_blob\_storage\_cors\_allowed\_maxage) | List of allowed maxage for CORS of storage account | `number` | `3000` | no |
| <a name="input_blob_storage_cors_allowed_methods"></a> [blob\_storage\_cors\_allowed\_methods](#input\_blob\_storage\_cors\_allowed\_methods) | List of allowed methods for CORS of storage account | `list(string)` | <pre>[<br/>  "GET",<br/>  "POST",<br/>  "PUT"<br/>]</pre> | no |
| <a name="input_blob_storage_cors_allowed_origins"></a> [blob\_storage\_cors\_allowed\_origins](#input\_blob\_storage\_cors\_allowed\_origins) | List of allowed origin for CORS of storage account | `list(string)` | <pre>[<br/>  "*"<br/>]</pre> | no |
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | ID of the AKS cluster | `string` | n/a | yes |
| <a name="input_cluster_integration_azuread_application_enable_override"></a> [cluster\_integration\_azuread\_application\_enable\_override](#input\_cluster\_integration\_azuread\_application\_enable\_override) | Enable overriding the name of azuread application. This will only be used if feature\_cluster\_integration\_azuread\_application\_enabled is true. You need to pass cluster\_integration\_azuread\_application\_override\_name to pass the azuread application name | `bool` | `false` | no |
| <a name="input_cluster_integration_azuread_application_override_name"></a> [cluster\_integration\_azuread\_application\_override\_name](#input\_cluster\_integration\_azuread\_application\_override\_name) | Azuread application name. Only used if cluster\_integration\_azuread\_application\_enable\_override is true | `string` | `""` | no |
| <a name="input_cluster_integration_service_principal_password_expiry_end_date"></a> [cluster\_integration\_service\_principal\_password\_expiry\_end\_date](#input\_cluster\_integration\_service\_principal\_password\_expiry\_end\_date) | End date post which service principal password would expire | `string` | `"2124-02-12T09:42:53Z"` | no |
| <a name="input_cluster_integration_service_principal_role"></a> [cluster\_integration\_service\_principal\_role](#input\_cluster\_integration\_service\_principal\_role) | Role that will be assigned to the service principal on AKS cluster | `string` | `"Reader"` | no |
| <a name="input_cluster_integration_sign_in_audience"></a> [cluster\_integration\_sign\_in\_audience](#input\_cluster\_integration\_sign\_in\_audience) | sign\_in\_audience of the cluster integration | `string` | `"AzureADMyOrg"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the AKS cluster | `string` | n/a | yes |
| <a name="input_container_registry_admin_enabled"></a> [container\_registry\_admin\_enabled](#input\_container\_registry\_admin\_enabled) | Enable admin for the docker registry | `bool` | `true` | no |
| <a name="input_container_registry_enable_override"></a> [container\_registry\_enable\_override](#input\_container\_registry\_enable\_override) | Enable overriding the name of container registry. This will only be used if feature\_container\_registry\_enabled is true. You need to pass container\_registry\_override\_name to pass the container registry name | `bool` | `false` | no |
| <a name="input_container_registry_override_name"></a> [container\_registry\_override\_name](#input\_container\_registry\_override\_name) | Container registry name. Only used if container\_registry\_enable\_override is true | `string` | `""` | no |
| <a name="input_container_registry_public_network_access_enabled"></a> [container\_registry\_public\_network\_access\_enabled](#input\_container\_registry\_public\_network\_access\_enabled) | Whether public network access is allowed for the container registry | `bool` | `true` | no |
| <a name="input_container_registry_sku"></a> [container\_registry\_sku](#input\_container\_registry\_sku) | SKU of the docker registry | `string` | `"Standard"` | no |
| <a name="input_feature_blob_storage_enabled"></a> [feature\_blob\_storage\_enabled](#input\_feature\_blob\_storage\_enabled) | Enable blob storage feature in the platform | `bool` | `true` | no |
| <a name="input_feature_cluster_integration_enabled"></a> [feature\_cluster\_integration\_enabled](#input\_feature\_cluster\_integration\_enabled) | Enable the support of cluster integration | `bool` | `true` | no |
| <a name="input_feature_container_registry_enabled"></a> [feature\_container\_registry\_enabled](#input\_feature\_container\_registry\_enabled) | Enable docker registry feature in the platform | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the storage account and container registry. This should be kept similar to resource group for ideal performance. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_truefoundry_blob_container_id"></a> [truefoundry\_blob\_container\_id](#output\_truefoundry\_blob\_container\_id) | Storage account container ID |
| <a name="output_truefoundry_blob_storage_account_enabled"></a> [truefoundry\_blob\_storage\_account\_enabled](#output\_truefoundry\_blob\_storage\_account\_enabled) | Flag to enable blob storage account |
| <a name="output_truefoundry_blob_storage_account_id"></a> [truefoundry\_blob\_storage\_account\_id](#output\_truefoundry\_blob\_storage\_account\_id) | Storage account id |
| <a name="output_truefoundry_blob_storage_account_primary_blob_host"></a> [truefoundry\_blob\_storage\_account\_primary\_blob\_host](#output\_truefoundry\_blob\_storage\_account\_primary\_blob\_host) | Storage account primary blob host |
| <a name="output_truefoundry_blob_storage_account_primary_connection_string"></a> [truefoundry\_blob\_storage\_account\_primary\_connection\_string](#output\_truefoundry\_blob\_storage\_account\_primary\_connection\_string) | Storage account primary connection string |
| <a name="output_truefoundry_blob_storage_account_primary_location"></a> [truefoundry\_blob\_storage\_account\_primary\_location](#output\_truefoundry\_blob\_storage\_account\_primary\_location) | Storage account primary location |
| <a name="output_truefoundry_blob_storage_account_primary_web_host"></a> [truefoundry\_blob\_storage\_account\_primary\_web\_host](#output\_truefoundry\_blob\_storage\_account\_primary\_web\_host) | Storage account primary web host url |
| <a name="output_truefoundry_blob_storage_root_url"></a> [truefoundry\_blob\_storage\_root\_url](#output\_truefoundry\_blob\_storage\_root\_url) | Storage account root URL for blob storage |
| <a name="output_truefoundry_cluster_integrations_azuread_application_client_id"></a> [truefoundry\_cluster\_integrations\_azuread\_application\_client\_id](#output\_truefoundry\_cluster\_integrations\_azuread\_application\_client\_id) | Azure AD application client ID |
| <a name="output_truefoundry_cluster_integrations_azuread_application_id"></a> [truefoundry\_cluster\_integrations\_azuread\_application\_id](#output\_truefoundry\_cluster\_integrations\_azuread\_application\_id) | Azure AD application ID |
| <a name="output_truefoundry_cluster_integrations_azuread_application_name"></a> [truefoundry\_cluster\_integrations\_azuread\_application\_name](#output\_truefoundry\_cluster\_integrations\_azuread\_application\_name) | n/a |
| <a name="output_truefoundry_cluster_integrations_enabled"></a> [truefoundry\_cluster\_integrations\_enabled](#output\_truefoundry\_cluster\_integrations\_enabled) | Flag to enable cluster integrations |
| <a name="output_truefoundry_cluster_integrations_service_principal_name"></a> [truefoundry\_cluster\_integrations\_service\_principal\_name](#output\_truefoundry\_cluster\_integrations\_service\_principal\_name) | n/a |
| <a name="output_truefoundry_cluster_integrations_service_principal_password"></a> [truefoundry\_cluster\_integrations\_service\_principal\_password](#output\_truefoundry\_cluster\_integrations\_service\_principal\_password) | n/a |
| <a name="output_truefoundry_cluster_integrations_service_principal_tenant_id"></a> [truefoundry\_cluster\_integrations\_service\_principal\_tenant\_id](#output\_truefoundry\_cluster\_integrations\_service\_principal\_tenant\_id) | n/a |
| <a name="output_truefoundry_container_registry_admin_password"></a> [truefoundry\_container\_registry\_admin\_password](#output\_truefoundry\_container\_registry\_admin\_password) | Container registry admin password |
| <a name="output_truefoundry_container_registry_admin_username"></a> [truefoundry\_container\_registry\_admin\_username](#output\_truefoundry\_container\_registry\_admin\_username) | Container registry admin username |
| <a name="output_truefoundry_container_registry_enabled"></a> [truefoundry\_container\_registry\_enabled](#output\_truefoundry\_container\_registry\_enabled) | Flag to enable container registry |
| <a name="output_truefoundry_container_registry_id"></a> [truefoundry\_container\_registry\_id](#output\_truefoundry\_container\_registry\_id) | Container registry ID |
| <a name="output_truefoundry_container_registry_login_server"></a> [truefoundry\_container\_registry\_login\_server](#output\_truefoundry\_container\_registry\_login\_server) | Container registry login server url |
<!-- END_TF_DOCS -->