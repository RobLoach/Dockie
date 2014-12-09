# Dockie: LAMP

Easily set up and develop on a LAMP stack, using [Dockie Development Environment](http://github.com/robloach/dockie).


## Features

* [Dockie](../dockie)
* [Apache](https://httpd.apache.org/) 2.4.7
* [PHP](http://php.net/) 5.5.9
* [MySQL](http://www.mysql.com/) 5.5.37
* [phpMyAdmin](http://www.phpmyadmin.net/) 4.0.10
* [Composer](http://getcomposer.org) 1.0.0-alpha8


## Usage

### Install

Pull `dockie/lamp` from the Docker repository:
```
docker pull dockie/lamp
```

Or build `dockie/lamp` from source:
```
git clone https://github.com/RobLoach/Dockie.git
cd Dockie
docker build -t dockie/lamp lamp
```

### Run

Run the image, binding associated ports, and mounting the present working
directory:

```
docker run -p 8000:80 -p 2200:22 -p 3306:3306 -v $(pwd):/var/www/html:rw dockie/lamp
```


## Services

### MySQL
Connect on `localhost:3306`, user `root`, password `root`.
