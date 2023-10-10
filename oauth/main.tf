locals {
  common_labels = {
    owned-by   = "platform"
    managed-by = "terraform"
    env        = "non-prod"
  }
}

/******************************************
  Identity aware proxy configuration: https://cloud.google.com/iap/docs/programmatic-oauth-clients
 *****************************************/
resource "google_iap_brand" "project_brand" {
  project = var.project_id

  application_title = "Cloud diplomate internal"
  support_email     = "jonathan.chevalier@cloud-diplomate.com"
}

# Or can create oauth2 client manually with redirect uri: https://iap.googleapis.com/v1/oauth/clientIds/CLIENT_ID:handleRedirect
resource "google_iap_client" "iap_internal_client" {
  brand        = var.brand
  display_name = var.display_name
}
