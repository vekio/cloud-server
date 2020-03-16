# cloud-server

## Traefik + Nextcloud + Bitwarden + Jellyfin

Extra: minecraft server, minecraft router

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
#### Terraform
Im using terraform to automatically create a dns domain and cname records resources on digital ocean. 
If you want to do it manualy skip this part of the setup.

If you use digital ocean complete the file named `terraform.tfvars` inside terraform folder.

Otherwise if you use any other provider check what you need here https://www.terraform.io/docs/providers/index.html and rewrite the .tf files.

##### Traefik
Copy the treafik-config folder to your traefik data folder.
You must asure acme.json file has 600 permissions. 

    chmod 600 acme.json

And replace with your email on traefik.yml -> certificatesResolvers -> email.

#### Docker
First you must create the network proxy and network db.

    docker network create proxy
    docker network create db

Then complete the .env file.

Use `docker-compose up -d` to run the services:
- Traefik
- Nextcloud (postgres and redis)
- Jellyfin
- Bitwarden

## 4. Services
##### Core
> Services behind traefik proxy

Traefik
- https://hub.docker.com/_/traefik

Nextcloud
- https://hub.docker.com/_/nextcloud

Bitwarden
- https://hub.docker.com/r/bitwardenrs/server

Jellyfin
- https://hub.docker.com/r/onlyoffice/documentserver

##### Extras
> Services not in the root docker-compose file, outside traefik proxy

Minecraft router
- https://hub.docker.com/r/itzg/mc-router

Minecraft server.
- https://github.com/itzg/docker-minecraft-server
