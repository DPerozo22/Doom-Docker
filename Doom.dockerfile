FROM ubuntu:latest

RUN apt update && apt install -y xorg libgl1-mesa-dri chocolate-doom wget

WORKDIR /app

RUN wget https://github.com/freedoom/freedoom/releases/download/v0.12.1/freedoom1.wad -O freedoom1.wad

CMD ["chocolate-doom", "-iwad", "freedoom1.wad"]