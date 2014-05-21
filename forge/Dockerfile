# Docker: Forge
FROM ubuntu:trusty
MAINTAINER Rob Loach <robloach@gmail.com>

# Environment Variables
ENV DEBIAN_FRONTEND noninteractive

# Base Packages
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y supervisor git
RUN mkdir -p /var/log/supervisor

# OpenSSH
RUN apt-get install -y openssh-server
ADD configs/sshd/supervisor.conf /etc/supervisor/conf.d/sshd.conf
RUN mkdir -p /var/run/sshd
RUN chmod 755 /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i.bak -e 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# Clean up
RUN apt-get clean

# Start
EXPOSE 22
CMD ["supervisord", "-n"]
