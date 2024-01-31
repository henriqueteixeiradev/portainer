# Use a imagem base do Portainer Enterprise Edition
FROM portainer/portainer-ee:latest

# Defina as portas que o contêiner deve expor
EXPOSE 8000
EXPOSE 9443

# Defina os volumes que devem ser montados
VOLUME ["/var/run/docker.sock", "/data"]
