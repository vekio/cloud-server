# cloud-server
Personal cloud server

## 1. OS requirements
This setup requires the latest Docker and Docker-compose versions.
Running right now:

    Docker version 19.03.7, build 7141c199a2
    Docker-compose version 1.25.4, build 8d51620a

## 2. Domain provider requirements
My provider is Digital Ocean, but any provider that is supported by ACME can be used.

https://docs.traefik.io/v2.0/https/acme/#providers

This setup also uses wildcard certificate, so only one certificate is used for all your domain. Your provider must support DNS-01 challenge to use wildcard certificates.

## 3. Setup
##### Terraform
Im using terraform to automatically create a dns domain and records on digital ocean. 
If you want to do it manualy skip this part of the setup.

If you use digital ocean go inside the terraform folder and create a file named `terraform.tfvars` with the next lines and complete.

Copy and complete the next lines

    # provider api access key
    do_token=""
    # server ip
    cloud_ip=""
    # domain.tld
    domain_tld=""
    # digital ocean project name
    project=""

Otherwise if you use any other provider check what you need here https://www.terraform.io/docs/providers/index.html and rewrite the .tf files.

