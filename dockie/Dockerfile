# Dockie Development Environment

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
RUN supervisord --version


# Version Control

RUN apt-get install -y git
RUN git --version


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
RUN zsh --version


# PHP

RUN apt-get install -y php5-cgi php5-json php5-cli php5-curl curl php5-mcrypt php5-xdebug mcrypt libmcrypt-dev php5-mysql php5-gd
ADD configs/php/php-cli.ini /etc/php5/cli/conf.d/robloach-dev.ini
RUN php5enmod mcrypt
RUN php --version
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/bin --version=1.0.0-alpha8
ENV COMPOSER_HOME /root/.composer
RUN composer --version
RUN composer global require phpunit/phpunit:4.*


# HHVM

RUN wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add - && \
    echo 'deb http://dl.hhvm.com/ubuntu trusty main' \
      | tee /etc/apt/sources.list.d/hhvm.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y hhvm libmemcached-dev libgmp-dev
RUN hhvm --version


# Node.js

RUN apt-get install -y build-essential
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs
RUN nodejs --version
RUN npm install -g coffee-script bower grunt-cli gulp component yo eslint


# Ruby

RUN apt-get install -y ruby ruby-dev rubygems-integration make
RUN ruby --version
RUN gem install bundler rake sass
RUN gem install compass --pre


# Python

RUN apt-get install -y python python3 pylint
RUN python --version
RUN python3 --version


# Go

RUN apt-get install -y golang
RUN golang --version
RUN go version


# Clean up

RUN apt-get clean
RUN apt-get autoremove


# Start

EXPOSE 22
CMD ["supervisord"]
