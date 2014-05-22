# Forge: LAMP

Easily set up and develop on a LAMP stack, using [Docker Forge](http://github.com/robloach/forge).


## Features

* [Forge](../forge)
* [Apache](https://httpd.apache.org/) 2.4.7
* [PHP](http://php.net/) 5.5.9
* [MySQL](http://www.mysql.com/) 5.5.37
* [phpMyAdmin](http://www.phpmyadmin.net/) 4.0.10
* [Composer](http://getcomposer.org) 1.0.0-alpha8


## Usage

### Install

Pull `robloach/forge-lamp` from the Docker repository:
```
docker pull robloach/forge-lamp
```

Or build `robloach/forge-lamp` from source:
```
git clone https://github.com/RobLoach/forge.git
docker build -t robloach/forge-lamp forge/lamp
```

### Run

Run the image, binding associated ports, and mounting the present working
directory:

```
docker run -d -p 880:80 -p 222:22 -p 33306:3306 -v $(pwd):/var/www/html:rw robloach/forge-lamp
```


## Services

Service     | Usage
------------|------------
SSH         | Connect with `ssh root@localhost -p 422` with the password `root`
Apache      | Visit `http://localhost:880` in your browser
phpMyAdmin  | Visit `http://localhost:880/phpmyadmin` in your browser
MySQL       | Connect on `localhost:3306`, user `root`, password `root`
