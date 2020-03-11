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

# nextcloud.domain.tld
resource "digitalocean_record" "nextcloud_domain_tld" {
  domain  = digitalocean_domain.domain_tld.name
  type    = "CNAME"
  name    = "nextcloud"
  value   = format("%s.", var.domain_tld)
  ttl     = 43200
}
