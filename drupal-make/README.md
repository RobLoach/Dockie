# Forge: Drupal Make

[Docker](http://docker.com) container aimed for [Drupal](http://drupal.org) development through [install profiles](https://www.drupal.org/documentation/build/distributions),
via [Docker Forge](http://github.com/robloach/forge).


## Features

* [Forge: Drupal](../drupal)
* [Drupal](http://drupal.org) 7 and 8 support
* Builds, installs and runs through an install profile with a [Drush Make](http://drush.ws/docs/make.txt) definition


## Usage

### Install

Pull `robloach/forge-drupal-make` from the Docker repository:

    docker pull robloach/forge-drupal-make

Or build `robloach/forge-drupal-make` from source:

    git clone https://github.com/RobLoach/forge.git
    cd forge/drupal-make
    docker build -t robloach/forge-drupal-make .


### Run

Change directory to where an install profile, with a `.make` file, is located:

    cd myprofile

Run the image, binding associated ports, and mounting the present working
directory:

    docker run -p 880:80 -p 222:22 -v $(pwd):/profile:rw robloach/forge-drupal-make

Wait for `drupal-make-setup` to finish running, then visit `http://localhost:880` in your browser to see the installed site.


### Testing

To build and run the project for *Drupal 7* in one command, run the following command:

    docker build -t robloach/forge-drupal-make . && docker run -p 880:80 -p 222:22 -v $(pwd)/myprofile_seven:/profile:rw robloach/forge-drupal-make

To build and run the project for *Drupal 8* in one command, run the following command:

    docker build -t robloach/forge-drupal-make . && docker run -p 880:80 -p 222:22 -v $(pwd)/myprofile_eight:/profile:rw robloach/forge-drupal-make
