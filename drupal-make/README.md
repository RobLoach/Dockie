# Dockie: Drupal Make

[Docker](http://docker.com) container aimed for [Drupal](http://drupal.org) development through [install profiles](https://www.drupal.org/documentation/build/distributions),
via the [Dockie Development Environment](http://github.com/robloach/dockie).


## Features

* [Drupal Docker](../drupal)
* [Drupal](http://drupal.org) 7 and 8 support
* Builds, installs and runs through an install profile with a [Drush Make](http://drush.ws/docs/make.txt) definition


## Usage

### Install

Pull `dockie/drupal-make` from the Docker repository:

    docker pull dockie/drupal-make

Or build `dockie/drupal-make` from source:

    git clone https://github.com/RobLoach/Dockerfiles.git
    cd Dockerfiles
    docker build -t dockie/drupal-make drupal-make


### Run

Change directory to where an install profile, with a `.make` file, is located:

    cd myprofile

Run the image, binding associated ports, and mounting the present working
directory:

    docker run -p 8000:80 -p 2200:22 -v $(pwd):/profile:rw dockie/drupal-make

Wait for `drupal-make-setup` to finish running, then visit `http://localhost:880` in your browser to see the installed site.


### Testing

To build and run the project for *Drupal 7* in one command, run the following command:

    docker build -t dockie/drupal-make . && docker run -p 880:80 -p 222:22 -v $(pwd)/myprofile_seven:/profile:rw dockie/drupal-make

To build and run the project for *Drupal 8* in one command, run the following command:

    docker build -t dockie/drupal-make . && docker run -p 880:80 -p 222:22 -v $(pwd)/myprofile_eight:/profile:rw dockie/drupal-make
