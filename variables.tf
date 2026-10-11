variable "dns_keys_lookup" {
  description = <<EOT
Map of dns_keys_lookup, attributes below
Required:
    - managed_zone
Optional:
    - project
EOT

  type = map(object({
    managed_zone = string
    project      = optional(string)
  }))
}

