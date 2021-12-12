#!/bin/sh
cat <<EOF > /etc/nginx/nginx.conf
events {
  worker_connections  1024;
}

include /etc/nginx/conf.d/stream.conf;
EOF