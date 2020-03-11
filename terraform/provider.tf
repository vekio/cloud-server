# set the variables value in terraform.tfvars file
variable "do_token" {
}
variable "cloud_ip" {
}
variable "domain_tld" {
}
variable "project" {
}

# configure the digitalocean provider
provider "digitalocean" {
  token = var.do_token
}
