# Docker: Drupal 8

[Docker](http://docker.com) image aimed for [Drupal](http://drupal.org) 8 development, using [Docker Forge](http://github.com/robloach/forge).

http://github.com/robloach/docker-drupal8


## Features

* [Docker Forge](http://github.com/robloach/forge)
* [Apache](http://apache.org) 2.4.7
* [PHP](http://php.net) 5.5.9
* [MySQL](http://mysql.com) 5.5.37
* [phpMyAdmin](http://phpmyadmin.net) 4.0.10
* [Composer](http://getcomposer.org) 1.0.0-alpha8
* [Drush](http://github.com/drush-ops/drush) master


## Usage

### Install

Pull `forge/drupal` from the Docker repository:

    docker pull robloach/forge-drupal

Or build `robloach/forge-drupal` from source:

    git clone https://github.com/RobLoach/forge.git
    cd forge/drupal
    docker build -t robloach/forge-drupal .


### Usage

1. Switch to the directory where Drupal is installed, or check it out:

  ``` bash
  git clone --branch 8.0.x http://git.drupal.org/project/drupal.git
  cd drupal
  ```

2. Run the container, binding associated ports, and mounting the present working
directory:

  ``` bash
  docker run -p 880:80 -p 222:22 -v $(pwd):/var/www/html:rw robloach/forge-drupal
  ```

3. Visit `http://localhost:880` in your browser
4. Go through Drupal's install process, using `root:root` for MySQL permissions


### Work In Progress

This is in no means production, or even development-ready. Contributions are
more than welcome.


## Services

Service     | Port | Usage
------------|------|------
SSH         | 22   | Connect with `ssh root@localhost -p 422` with the password `root`
Apache      | 80   | Visit `http://localhost:880` in your browser
PHPMyAdmin  | 80   | Visit `http://localhost:880/phpmyadmin` in your browser


## Volumes

Volume          | Description
----------------|-------------
`/var/www/html` | The location of the web root.
