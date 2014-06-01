#
# Docker: Forge
#
FROM ubuntu:trusty
MAINTAINER Rob Loach <robloach@gmail.com>

#
# Update
#
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y

#
# Supervisor
#
RUN apt-get install -y supervisor git
RUN mkdir -p /var/log/supervisor
ADD configs/supervisor/supervisor.conf /etc/supervisor/conf.d/supervisor.conf

#
# OpenSSH
#
RUN apt-get install -y openssh-server
ADD configs/openssh/supervisor.conf /etc/supervisor/conf.d/openssh.conf
ADD configs/openssh/ssh-setup.sh /ssh-setup.sh
RUN chmod +x /ssh-setup.sh
RUN mkdir -p /var/run/sshd
RUN chmod 755 /var/run/sshd
ENV SSH_ROOT_PASSWORD root
RUN echo "root:root" | chpasswd
RUN sed -i.bak -e 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

#
# Zsh
#
RUN apt-get install -y zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh
ADD configs/oh-my-zsh/zshrc /root/.zshrc
RUN chsh --shell $(which zsh)

#
# PHP
#
RUN apt-get install -y php5-cgi php5-json php5-cli php5-curl curl php5-mcrypt php5-xdebug mcrypt libmcrypt-dev php5-mysql php5-gd
ADD configs/php/php-cli.ini /etc/php5/cli/conf.d/robloach-forge.ini
RUN php5enmod mcrypt
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/bin --version=1.0.0-alpha8

#
# Node.js
#
RUN apt-get install -y -q software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js -y
RUN apt-get update -y
RUN apt-get install nodejs -y
RUN npm install -g coffee-script bower grunt-cli gulp component yo

#
# Ruby
#
RUN apt-get install -y ruby
RUN gem install compass bundler rake

#
# Start
#
EXPOSE 22
CMD ["supervisord"]
