# Docker: Forge

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
docker run -d -p 422:22 -v robloach/forge
```


## Services

### SSH

* Host: `localhost`
* User: `root`
* Password: `root`
* Port: `422`

```
ssh root@localhost -p 422
```
