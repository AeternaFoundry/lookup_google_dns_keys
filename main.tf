data "google_dns_keys" "dns_keys_lookup" {
  for_each = var.dns_keys_lookup

  managed_zone = each.value.managed_zone
  project      = each.value.project
}

