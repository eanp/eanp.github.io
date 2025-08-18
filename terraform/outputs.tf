output "fqdn" {
  value = "${cloudflare_record.quran_subdomain.name}.${var.cloudflare_zone_name}"
}

output "github_cname_value" {
  value = var.custom_domain
}
