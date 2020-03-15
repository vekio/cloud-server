# domain.tld
resource "digitalocean_domain" "domain_tld" {
  name      = var.domain_tld
  ip_address  = var.cloud_ip
}

# www.domain.tld
resource "digitalocean_record" "www_domain_tld" {
  domain  = digitalocean_domain.domain_tld.name
  type    = "CNAME"
  name    = "www"
  value   = format("%s.", var.domain_tld)
  ttl     = 43200
}

# traefik.domain.tld
resource "digitalocean_record" "traefik_domain_tld" {
  domain  = digitalocean_domain.domain_tld.name
  type    = "CNAME"
  name    = "traefik"
  value   = format("%s.", var.domain_tld)
  ttl     = 43200
}

# cloud.domain.tld
resource "digitalocean_record" "cloud_domain_tld" {
  domain  = digitalocean_domain.domain_tld.name
  type    = "CNAME"
  name    = "cloud"
  value   = format("%s.", var.domain_tld)
  ttl     = 43200
}

# documentserver.domain.tld
resource "digitalocean_record" "documentserver_domain_tld" {
  domain  = digitalocean_domain.domain_tld.name
  type    = "CNAME"
  name    = "documentserver"
  value   = format("%s.", var.domain_tld)
  ttl     = 43200
}

# media.domain.tld
resource "digitalocean_record" "media_domain_tld" {
  domain  = digitalocean_domain.domain_tld.name
  type    = "CNAME"
  name    = "media"
  value   = format("%s.", var.domain_tld)
  ttl     = 43200
}

# vault.domain.tld
resource "digitalocean_record" "vault_domain_tld" {
  domain  = digitalocean_domain.domain_tld.name
  type    = "CNAME"
  name    = "vault"
  value   = format("%s.", var.domain_tld)
  ttl     = 43200
}
