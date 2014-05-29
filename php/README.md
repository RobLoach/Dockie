# Forge: PHP

PHP development essentials, through [Docker Forge](http://github.com/robloach/forge).


## Features

* [Forge](../forge)
* [PHP](http://php.net/) 5.5.9
* [Composer](http://getcomposer.org) 1.0.0-alpha8


## Usage

### Install

Pull `robloach/php` from the Docker repository:
```
docker pull robloach/forge-php
```

Or build `robloach/forge-php` from source:
```
git clone https://github.com/RobLoach/forge.git
docker build -t robloach/forge-php forge/php
```

### Run

Run the image, binding associated ports, and mounting the present working
directory:

```
docker run -p 880:80 -p 222:22 -v $(pwd):/app:rw robloach/forge-php
```


## Services

Service     | Usage
------------|------------
SSH         | Connect with `ssh root@localhost -p 222` with the password `root`
HTTP        | Port 80 is exposed for any web server you'd like to use


## Volumes

Volume          | Description
----------------|-------------
`/app` | The location of your PHP application.
