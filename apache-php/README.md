# Forge: Apache PHP

Apache web server, with the PHP essentials, using [Docker Forge](http://github.com/robloach/forge).


## Features

* [Forge](../forge)
* [Apache](https://httpd.apache.org/) 2.4.7
* [PHP](http://php.net/) 5.5.9
* [Composer](http://getcomposer.org) 1.0.0-alpha8


## Usage

### Install

Pull `robloach/apache-php` from the Docker repository:
```
docker pull robloach/forge-apache-php
```

Or build `robloach/forge-apache-php` from source:
```
git clone https://github.com/RobLoach/forge.git
docker build -t robloach/forge-apache-php forge/apache-php
```

### Run

Run the image, binding associated ports, and mounting the present working
directory:

```
docker run -d -p 880:80 -p 222:22 -v $(pwd):/var/www/html:rw robloach/forge-lamp
```


## Services

Service     | Usage
------------|------------
SSH         | Connect with `ssh root@localhost -p 422` with the password `root`
Apache      | Visit `http://localhost:880` in your browser
