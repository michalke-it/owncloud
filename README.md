# owncloud
Everything needed to deploy owncloud on a Raspberry Pi 3

Create a file called .env and configure as follows:
  OWNCLOUD_VERSION=10.7
  OWNCLOUD_DOMAIN=mydomain.tld:8080
  ADMIN_USERNAME=admin
  ADMIN_PASSWORD=password
  HTTP_PORT=8080
  SSL_DOMAIN=mydomain.tld
 
 Your data will be stored on internal storage so think of moving Docker's data root by editing the lin in docker.service to:
  /usr/sbin/dockerd --data-root /opt/owncloud/docker-data/ -H fd://
