# Use a imagem base do Portainer Enterprise Edition
FROM portainer/portainer-ee:latest

# Defina as portas que o contêiner deve expor
EXPOSE 8000
EXPOSE 9443

# Defina os volumes que devem ser montados
VOLUME ["/var/run/docker.sock", "/data"]

# Defina o comando de inicialização do contêiner
CMD ["--name", "portainer", "--restart=always", "-v", "/var/run/docker.sock:/var/run/docker.sock", "-v", "portainer_data:/data"]
