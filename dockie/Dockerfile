# Dockie Development Environment

FROM ubuntu:15.04
MAINTAINER Rob Loach <robloach@gmail.com>


# Update

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get upgrade -y


# Base Dependencies

RUN apt-get install -y software-properties-common wget \
  git mercurial subversion && \
  git --version && \
  hg --version && \
  svn --version


# Zsh

RUN apt-get install -y zsh && \
  git clone git://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh && \
  chsh --shell $(which zsh) && \
  zsh --version
ADD configs/oh-my-zsh/zshrc /root/.zshrc


# PHP

RUN apt-get install -y php-pear php5-cgi php5-json php5-cli php5-curl curl \
  php5-mcrypt php5-xdebug mcrypt libmcrypt-dev php5-mysql php5-gd php5-sqlite \
  sqlite && \
  php5enmod mcrypt pdo pdo_sqlite sqlite3 && \
  php --version
ADD configs/php/php-cli.ini /etc/php5/cli/conf.d/dockie-dockie.ini


# Composer

ENV COMPOSER_HOME /root/.composer
ENV PATH $COMPOSER_HOME/vendor/bin:$PATH
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer \
  --install-dir=/usr/bin --version=1.0.0-alpha10
RUN composer --version


# PHPUnit

RUN composer global require phpunit/phpunit:4.* && \
  phpunit --version


# Drush

RUN composer global require drush/drush:~7.0.0@alpha && \
  drush --version


# Python

RUN apt-get install -y python python3 python-pil pylint && \
python --version && \
python3 --version


# Node.js

RUN apt-get install -y build-essential && \
  curl -sL https://deb.nodesource.com/setup_0.12 | sh -
RUN apt-get install -y nodejs && \
  nodejs --version && \
  npm --version && \
  npm install -g coffee-script bower grunt-cli gulp component yo eslint


# Ruby

RUN apt-get install -y ruby ruby-dev ri && \
  ruby --version && \
  echo "Gem version:" && gem --version
RUN gem install rake bundler sass && \
  bundle --version && rake --version && sass --version && \
  gem install compass && \
  compass --version


# Go

RUN apt-get install -y golang && \
  go version


# Rust

RUN mkdir -p /tmp/rust && cd /tmp/rust && \
  wget https://static.rust-lang.org/dist/rust-1.0.0-alpha.2-x86_64-unknown-linux-gnu.tar.gz
RUN cd /tmp/rust && tar -zxvf * && cd r* && \
  ./install.sh && rm -rf /tmp/rust
RUN rustc --version && cargo --version


# Utility Packages

RUN apt-get install -y mysql-client unzip


# Version Check

COPY configs/dockie/dockie-version /dockie-version
RUN chmod +x /dockie-version


# Clean up

RUN apt-get clean && apt-get autoremove
RUN /dockie-version


# Start

VOLUME /app
EXPOSE 22
CMD ["supervisord"]
