output "client_id_iap_internal_client" {
  value       = google_iap_client.iap_internal_client.client_id
  description = "Unique identifier of the OAuth client."
}

output "secret_iap_internal_client" {
  value       = google_iap_client.iap_internal_client.secret
  description = "Client secret of the OAuth client."
  sensitive   = true
}

