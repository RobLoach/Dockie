#
# Forge: Base
#

Base for a modern development environment, using [Docker](http://docker.io).


## Features

* [git](http://www.git-scm.com/) 1.9.1
* [OpenSSH](http://www.openssh.com/) 6.6
* [Supervisor](http://supervisord.org/) 3.0


## Usage

### Install

Build the `robloach/forge` image:
```
git clone https://github.com/RobLoach/forge.git
docker build -t robloach/forge forge/forge
```

### Run

Start up the image, binding associated ports:
```
docker run -p 422:22 robloach/forge
```


## Services

Service     | Usage
------------|------------
SSH         | Connect with `ssh root@localhost -p 422` with the password `root`


## Environment Variables

Variable            | Default | Description
:-------------------|---------|:--------
`SSH_ROOT_PASSWORD` | `root`  | The password to use for the `root` SSH user.
