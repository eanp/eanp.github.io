provider "cloudflare" {
  #  env: CLOUDFLARE_API_TOKEN
}

provider "github" {
  # env: GITHUB_TOKEN (default token GitHub Actions)
  owner = var.github_owner
}
