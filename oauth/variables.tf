variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "region" {
  description = "The region of the Cloud SQL resources"
  type        = string
}

variable "brand" {
  description = "Identifier of the brand to which this client is attached to. The format is projects/{project_number}/brands/{brand_id}/identityAwareProxyClients/{client_id}"
  type        = string
}

variable "display_name" {
  description = "Human-friendly name given to the OAuth client."
  type        = string
}
