FROM    nginx:latest

COPY    ./config/default.conf /etc/nginx/conf.d/default.conf
COPY    site/* /usr/share/nginx/html/
COPY    ./tools/entryPoint.sh /tmp/entryPoint.sh
RUN     chmod +x /tmp/entryPoint.sh

ENTRYPOINT [ "/tmp/entryPoint.sh" ]

CMD [ "nginx", "-g", "daemon off;" ]
