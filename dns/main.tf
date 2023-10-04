locals {
  common_labels = {
    owned-by   = "platform"
    managed-by = "terraform"
    env        = "prod"
  }
}

/******************************************
  dns configuration
 *****************************************/
module "dns_public_zone_cl_dpl" {
  source  = "terraform-google-modules/cloud-dns/google"
  version = "5.1.0"

  project_id = var.project_id
  type       = "public"

  name        = var.dns_name
  domain      = var.dns_domain
  description = "DNS zone for ${var.dns_name} managed by Terraform"

  recordsets = []

  labels = local.common_labels
}
