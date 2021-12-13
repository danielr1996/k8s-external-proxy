#!/bin/sh
cat <<EOF > /etc/nginx/nginx.conf
events {
  worker_connections  1024;
}
EOF

if [ "$MODE" = "HTTP" ]
then
  echo "include /etc/nginx/conf.d/proxy.conf;" >> /etc/nginx/nginx.conf
else 
  echo "include /etc/nginx/conf.d/stream.conf;" >> /etc/nginx/nginx.conf
fi
