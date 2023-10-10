<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.1.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 5.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_iap_client.iap_internal_client](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iap_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_brand"></a> [brand](#input\_brand) | Identifier of the brand to which this client is attached to. The format is projects/{project\_number}/brands/{brand\_id}/identityAwareProxyClients/{client\_id} | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Human-friendly name given to the OAuth client. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region of the Cloud SQL resources | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_id_iap_internal_client"></a> [client\_id\_iap\_internal\_client](#output\_client\_id\_iap\_internal\_client) | Unique identifier of the OAuth client. |
| <a name="output_secret_iap_internal_client"></a> [secret\_iap\_internal\_client](#output\_secret\_iap\_internal\_client) | Client secret of the OAuth client. |
<!-- END_TF_DOCS -->