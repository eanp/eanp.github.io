variable "github_owner" {
  type    = string
  default = "eanp"
}

variable "cloudflare_zone_name" {
  type    = string
  default = "kendil.id"
}

variable "repo_name" {
  type    = string
  default = "eanp.github.io"
}

variable "custom_domain" {
  type    = string
  default = "quran.kendil.id"
}

variable "cname_target" {
  type    = string
  default = "eanp.github.io"
}

variable "pages_branch" {
  type    = string
  default = "main"
}

variable "cloudflare_proxied" {
  type    = bool
  default = false
}
