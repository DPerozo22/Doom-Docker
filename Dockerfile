FROM ubuntu:latest

RUN apt update && apt install -y chocolate-doom freedoom xorg libgl1-mesa-dri

CMD ["chocolate-doom", "-iwad", "/usr/share/games/freedoom/freedoom1.wad"]