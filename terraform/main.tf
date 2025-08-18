data "cloudflare_zones" "zone" {
  filter {
    name = var.cloudflare_zone_name
  }
}

locals {
  zone_id = data.cloudflare_zones.zone.zones[0].id
}

resource "cloudflare_record" "quran_subdomain" {
  zone_id = local.zone_id
  name    = "quran"
  type    = "CNAME"
  value   = var.cname_target   # eanp.github.io
  ttl     = 300
  proxied = var.cloudflare_proxied
}

resource "github_repository_file" "cname_file" {
  repository          = var.repo_name
  file                = "CNAME"
  branch              = var.pages_branch
  commit_message      = "Set custom domain for GitHub Pages"
  content             = "${var.custom_domain}\n"
}