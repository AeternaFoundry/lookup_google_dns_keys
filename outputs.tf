output "dns_keys_lookup_id" {
  description = "Map of id values across all dns_keys_lookup, keyed the same as var.dns_keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_dns_keys.dns_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_keys_lookup_key_signing_keys" {
  description = "Map of key_signing_keys values across all dns_keys_lookup, keyed the same as var.dns_keys_lookup except keys with no key_signing_keys are omitted"
  value       = { for k, v in data.google_dns_keys.dns_keys_lookup : k => v.key_signing_keys if v.key_signing_keys != null && length(v.key_signing_keys) > 0 }
}
output "dns_keys_lookup_managed_zone" {
  description = "Map of managed_zone values across all dns_keys_lookup, keyed the same as var.dns_keys_lookup except keys with no managed_zone are omitted"
  value       = { for k, v in data.google_dns_keys.dns_keys_lookup : k => v.managed_zone if v.managed_zone != null && length(v.managed_zone) > 0 }
}
output "dns_keys_lookup_project" {
  description = "Map of project values across all dns_keys_lookup, keyed the same as var.dns_keys_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_dns_keys.dns_keys_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dns_keys_lookup_zone_signing_keys" {
  description = "Map of zone_signing_keys values across all dns_keys_lookup, keyed the same as var.dns_keys_lookup except keys with no zone_signing_keys are omitted"
  value       = { for k, v in data.google_dns_keys.dns_keys_lookup : k => v.zone_signing_keys if v.zone_signing_keys != null && length(v.zone_signing_keys) > 0 }
}

