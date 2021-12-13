FROM nginx
COPY container/ngx_stream_module.so /usr/lib/nginx/modules/ngx_stream_module.so
COPY container/stream.conf.template /etc/nginx/templates/stream.conf.template
COPY container/proxy.conf.template /etc/nginx/templates/proxy.conf.template
COPY container/99-override-nginx-conf.sh /docker-entrypoint.d/99-override-nginx-conf.sh
RUN chmod a+x /docker-entrypoint.d/99-override-nginx-conf.sh