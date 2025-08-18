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
  ttl     = 300
  proxied = var.cloudflare_proxied
  allow_overwrite = true            
  content         = var.cname_target 
}

resource "github_repository_file" "cname_file" {
  repository          = var.repo_name
  file                = "CNAME"
  branch              = var.pages_branch
  content             = var.custom_domain
  commit_message      = "Set custom domain for GitHub Pages"
  overwrite_on_create = true         # <-- izinkan timpa kalau file sudah ada
}