FROM ubuntu:latest

RUN apt update && apt install -y \
    chocolate-doom \
    xorg \
    libgl1-mesa-dri

WORKDIR /app

# Usamos CMD con la ruta donde se montará el .wad
CMD ["/usr/games/chocolate-doom", "-iwad", "/app/freedoom1.wad"]
