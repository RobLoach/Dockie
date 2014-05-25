#
# Forge: MySQL
#
FROM robloach/forge
MAINTAINER Rob Loach <robloach@gmail.com>

#
# MySQL
#
RUN apt-get install -y mysql-server mysql-client
ADD configs/mysql/mysql-setup.sh /mysql-setup.sh
RUN chmod +x /*.sh
ADD configs/mysql/my.cnf /etc/mysql/conf.d/my.cnf
ADD configs/mysql/supervisor.conf /etc/supervisor/conf.d/mysql.conf
RUN /mysql-setup.sh

#
# Start
#
EXPOSE 22 3306
CMD ["supervisord", "-n"]
