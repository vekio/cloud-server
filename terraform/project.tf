# project
resource "digitalocean_project" "project" {
  name        = var.project
  resources   = [
    digitalocean_domain.domain_tld.urn,
  ]
}
