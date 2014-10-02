FROM ubuntu:trusty
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
apt-get -yq install mysql-server-5.6 pwgen && \
rm -rf /var/lib/apt/lists/*
# Remove pre-installed database
RUN rm -rf /var/lib/mysql/*
# Add MySQL configuration
ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD mysqld_charset.cnf /etc/mysql/conf.d/mysqld_charset.cnf
ADD dump.sql.gz /tmp/
# Add MySQL scripts
ADD import_sql.sh /import_sql.sh
ADD run.sh /run.sh
RUN chmod 755 /*.sh

RUN cp /etc/mysql/my.cnf /usr/share/mysql/my-default.cnf
RUN mysql_install_db
RUN /import_sql.sh

EXPOSE 3306
CMD ["/run.sh"]
