
# curl -sSL https://get.docker.com | sh

# optional:
# usermod -a -G docker pi



docker restart pi-portainer

docker run --name pi-portainer --restart always -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v /opt/portainer:/data portainer/portainer


docker restart pi-postgres
#docker pull postgres

docker run --name pi-postgres --restart always -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=pi -d -p 5432:5432 postgres


