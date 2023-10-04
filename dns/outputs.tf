output "domain" {
  description = "Zone name servers."
  value       = module.dns_public_zone_cl_dpl.domain
}

output "type" {
  description = "Zone name servers."
  value       = module.dns_public_zone_cl_dpl.type
}

output "name_servers" {
  description = "Zone name servers."
  value       = module.dns_public_zone_cl_dpl.name_servers
}
