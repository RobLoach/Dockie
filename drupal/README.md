# Drupal Dockerfile

[Docker](http://docker.com) container aimed for [Drupal](http://drupal.org) development, using the [Docker Development Environment](http://github.com/robloach/Dockerfiles).


## Features

* [LAMP](../lamp)
* [Drupal](http://drupal.org) 6, 7 or 8 support
* [Drush](http://github.com/drush-ops/drush) master
* Sets up a MySQL database named `drupal`


## Usage

### Install

Pull `robloach/drupal` from the Docker repository:

    docker pull robloach/drupal

Or build `robloach/drupal` from source:

    git clone https://github.com/RobLoach/Dockerfiles.git
    cd Dockerfiles
    docker build -t robloach/drupal drupal


### Usage

1. Switch to the directory where Drupal is installed, or check it out:

  ``` bash
  git clone --branch 8.0.x http://git.drupal.org/project/drupal.git
  cd drupal
  ```

2. Run the container, binding associated ports, and mounting the present working
directory:

  ``` bash
  docker run -p 880:80 -p 222:22 -v $(pwd):/var/www/html:rw robloach/drupal
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
