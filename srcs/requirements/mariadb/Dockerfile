FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    mariadb-server \
    && rm-rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/mysqls \
    && chmod -R mysql:mysql /var/run/mysqld \
    && chmod 777 /var/run/mysqld

COPY tools/mariadb_setup.sh /usr/local/bin
RUN chmod +x /usr/local/bin/mariadb_setup.sh

EXPOSE 3306

ENTRYPOINT ["mariadb_setup.sh"]