
locals {
  common_labels = {
    owned-by   = "platform"
    managed-by = "terraform"
    env        = "prod"
  }
}

/******************************************
  Service Project
 *****************************************/
module "commons_dns_project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "14.3"

  random_project_id        = true
  random_project_id_length = 4
  name                     = "cl-dpl-commons-dns"

  org_id                      = var.org_id
  billing_account             = var.billing_id
  folder_id                   = var.commons_folder_id
  disable_services_on_destroy = false

  activate_apis = [
    "logging.googleapis.com",
    "dns.googleapis.com"
  ]

  labels = local.common_labels
}


