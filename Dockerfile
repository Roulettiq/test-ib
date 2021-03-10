FROM sfoxdev/chrome-vnc-rdp:latest
RUN sed -i "s/dir/dir \-\-proxy\-server\=\"socks5\:\/\/172.46.100.2:9050\"/" /etc/supervisor/conf.d/supervisord.conf
RUN sed -i "s/www.google.com/duckduckgo.com/" /etc/supervisor/conf.d/supervisord.conf
