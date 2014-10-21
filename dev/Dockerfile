# Development Environment

FROM ubuntu:trusty
MAINTAINER Rob Loach <robloach@gmail.com>


# Update

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y


# Supervisor

RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
ADD configs/supervisor/supervisor.conf /etc/supervisor/conf.d/supervisor.conf


# Version Control

RUN apt-get install -y git


# OpenSSH

RUN apt-get install -y openssh-server
ADD configs/openssh/supervisor.conf /etc/supervisor/conf.d/openssh.conf
ADD configs/openssh/ssh-setup.sh /ssh-setup.sh
RUN chmod +x /ssh-setup.sh
RUN mkdir -p /var/run/sshd
RUN chmod 755 /var/run/sshd
ENV SSH_ROOT_PASSWORD root
RUN echo "root:root" | chpasswd
RUN sed -i.bak -e 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config


# Zsh

RUN apt-get install -y zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh
ADD configs/oh-my-zsh/zshrc /root/.zshrc
RUN chsh --shell $(which zsh)


# PHP

RUN apt-get install -y php5-cgi php5-json php5-cli php5-curl curl php5-mcrypt php5-xdebug mcrypt libmcrypt-dev php5-mysql php5-gd
ADD configs/php/php-cli.ini /etc/php5/cli/conf.d/robloach-dev.ini
RUN php5enmod mcrypt
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/bin --version=1.0.0-alpha8
ENV COMPOSER_HOME /root/.composer
RUN composer global require phpunit/phpunit:4.*


# Node.js

RUN apt-get install -y build-essential
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs
RUN npm install -g coffee-script bower grunt-cli gulp component yo eslint


# Ruby

RUN apt-get install -y ruby ruby-dev rubygems-integration make
RUN ruby -v
RUN gem install bundler rake sass
RUN gem install compass --pre


# Python

RUN apt-get install -y python python3 pylint


# Go

RUN apt-get install -y golang


# Start

EXPOSE 22
CMD ["supervisord"]
