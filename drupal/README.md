# Dockie: Drupal

[Docker](http://docker.com) container aimed for [Drupal](http://drupal.org) development, using the [Dockie Development Environment](http://github.com/robloach/dockie).


## Features

* [LAMP](../lamp)
* [Drupal](http://drupal.org) 6, 7 or 8 support
* [Drush](http://github.com/drush-ops/drush) master
* Sets up a MySQL database named `drupal`


## Usage

### Install

Pull `dockie/drupal` from the Docker repository:

    docker pull dockie/drupal

Or build `dockie/drupal` from source:

    git clone https://github.com/RobLoach/Dockie.git
    cd Dockie
    docker build -t dockie/drupal drupal


### Usage

1. Switch to the directory where Drupal is installed, or check it out:

  ``` bash
  git clone --branch 8.0.x http://git.drupal.org/project/drupal.git
  cd drupal
  ```

2. Run the container, binding associated ports, and mounting the present working
directory:

  ``` bash
  docker run -p 8000:80 -p 2200:22 -v $(pwd):/var/www/html:rw dockie/drupal
  ```

3. Visit `http://localhost:880` in your browser
4. Go through Drupal's install process, using `root:root` for MySQL permissions


### Work In Progress

This is in no means production, or even development-ready. Contributions are
more than welcome.


## Services

### Apache

Visit `http://localhost:880` in your browser. Port: `80`.

### PHPMyAdmin

Visit `http://localhost:8000/phpmyadmin` in your browser.


## Volumes

### `/var/www/html`
The location of the web root.
