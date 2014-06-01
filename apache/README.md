# Forge: Apache PHP

Apache web server, with the PHP essentials, using [Docker Forge](http://github.com/robloach/forge).


## Features

* [Forge](../forge)
* [Apache](https://httpd.apache.org/) 2.4.7


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

Service     | Port | Usage
------------|------|------
SSH         | 22   | Connect with `ssh root@localhost -p 422` with the password `root`
Apache      | 80   | Visit `http://localhost:880` in your browser


## Volumes

Volume          | Description
----------------|-------------
`/var/www/html` | The location of the web root.
