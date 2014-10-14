# Docker: Drupal 7 Profile

[Docker](http://docker.com) container aimed for [Drupal](http://drupal.org) 7
development through [install profiles](https://www.drupal.org/documentation/build/distributions),
via [Docker Forge](http://github.com/robloach/forge).


## Features

* [Docker Forge: Drupal](../drupal)
* [Drupal](http://drupal.org) 7
* Installs and runs from an install profile with a [Drush Make](http://drush.ws/docs/make.txt) definition


## Usage

### Install

Pull `robloach/forge-drupal7` from the Docker repository:

    docker pull robloach/forge-drupal7

Or build `robloach/forge-drupal7` from source:

    git clone https://github.com/RobLoach/forge.git
    cd forge/drupal7
    docker build -t robloach/forge-drupal7 .


### Run

Change directory to where an install profile, with a `.make` file, is located:

    cd myprofile

Run the image, binding associated ports, and mounting the present working
directory:

    docker run -p 880:80 -p 222:22 -v $(pwd):/profile:rw robloach/forge-drupal7

After installation is complete, visit `http://localhost:880` in your browser to see the installed site.


### Testing

To build and run the project in one command, run the following command:

    docker build -t robloach/forge-drupal7 . && docker run -p 880:80 -p 222:22 -v $(pwd)/myprofile:/profile:rw robloach/forge-drupal7
