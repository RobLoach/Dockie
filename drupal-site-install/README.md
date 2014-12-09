# Dockie: Drupal Site Install

[Docker](http://docker.com) container aimed to install and run a [Drupal](http://drupal.org) instance, using the [Dockie Development Environment](http://github.com/robloach/dockie).


## Features

* [Dockie: Drupal](../drupal)
* [Drupal](http://drupal.org) 7 or 8 support
* Installs and runs a local Drupal instance


## Usage

### Install

Pull `dockie/drupal-site-install` from the Docker repository:

    docker pull dockie/drupal-site-install

Or build `dockie/drupal-site-install` from source:

    git clone https://github.com/RobLoach/Dockie.git
    cd Dockie/drupal-site-install
    docker build -t dockie/drupal-site-install .


### Usage

1. Switch to the directory where Drupal is installed, or check it out:

  ``` bash
  git clone --branch 8.0.x http://git.drupal.org/project/drupal.git
  cd drupal
  ```

2. Run the container, binding associated ports, and mounting the present working
directory:

  ``` bash
  docker run -p 8000:80 -p 2200:22 -v $(pwd):/var/www/html:rw dockie/drupal-site-install
  ```

3. Visit `http://localhost:880` in your browser


### Work In Progress

This is in no means production, or even development-ready. Contributions are
more than welcome.


## Environmental Variables

### `PROFILE`

The install profile to use when installing Drupal. Default: `standard`
