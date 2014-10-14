# Forge: DocPad

Development environment for [DocPad](http://docpad.org), using [Docker Forge](http://github.com/robloach/forge).


## Features

* [Forge](http://github.com/robloach/forge)
* [DocPad](https://httpd.apache.org/) 6.66.0


## Usage

### Install

Pull `robloach/forge-docpad` from the Docker repository:

    docker pull robloach/forge-docpad


Or build `robloach/forge-docpad` from source:

    git clone https://github.com/RobLoach/forge.git
    docker build -t robloach/forge-docpad forge/node

### Run

Run the image, binding associated ports, and mounting the present working
directory:

    docker run -p 9778:9778 -p 222:22 -v $(pwd):/app:rw robloach/forge-docpad help

Append the DocPad command to the end of your `docker run` command. The above
example uses `help`.


## Services

Service     | Port | Usage
------------|------|------
SSH         | 22   | Connect with `ssh root@localhost -p 422` with the password `root`
DocPad      | 9778 | When using `docpad run`, visit `http://localhost:9778` in your browser


## Volumes

Volume          | Description
----------------|-------------
`/app`          | The location of the DocPad application root.
