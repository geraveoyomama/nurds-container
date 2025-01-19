FROM nginx:latest

RUN apt update && \
  apt install -y git && \
  git clone https://github.com/fa-bien/nurds.git /usr/share/nginx/html && \
  apt purge -y git
