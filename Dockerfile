FROM dockerfile/mariadb
MAINTAINER Lysander Vogelzang <lysander@nuclyus.nl>

# Change to uid to match that of the user on our host
RUN usermod -u 5001 mysql

# ADD our manual configuration
ADD my.cnf /etc/mysql/my.cnf
