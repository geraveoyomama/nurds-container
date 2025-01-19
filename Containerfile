FROM docker.io/nginx:latest

RUN apt update && \
  apt install -y git && \
  git clone https://github.com/fa-bien/nurds.git && \
  mv nurds/* /usr/share/nginx/html/ && \
  rm nurds -rf && \
  apt purge -y git
