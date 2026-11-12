FROM debian:bullseye

RUN apt-get update  && apt-get install -y \
    nginx \
    openssl \
    && rm -rf /var/lib/apt/lists/*

COPY tools/init.sh /usr/local/bin/inint.sh
RUN chmod +x /usr/local/bin/init.sh

EXPOSE 443

ENTRYPOINT ["init.sh"]