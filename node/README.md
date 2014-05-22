# Forge: Node

Easily set up and develop on a Node development environment, using [Docker Forge](http://github.com/robloach/forge).


## Features

* [Forge](../forge)
* [Node](http://nodejs.org) 0.10.28
* [npm](http://npmjs.org) 1.4.9
* [Bower](http://bower.io)
* [CoffeeScript](http://coffeescript.org)
* [Grunt](http://gruntjs.com)
* [gulp.js](http://gulpjs.com)
* [component](http://component.io)


## Usage

### Install

Pull `robloach/forge-node` from the Docker repository:
```
docker pull robloach/forge-node
```

Or build `robloach/forge-node` from source:
```
git clone https://github.com/RobLoach/forge.git
docker build -t robloach/forge-node forge/node
```

### Run

Run the image, binding associated ports, and mounting the present working
directory:

```
docker run -d -p 880:80 -p 222:22 -p 33306:3306 -v $(pwd):/app:rw robloach/forge-lamp
```


## Services

Service     | Usage
------------|------------
SSH         | Connect with `ssh root@localhost -p 422` with the password `root`

So far there are no node services registered, but if you have some ideas on
what could be added, make an issue and it'll be added. Some ideas:

* [Logio](http://logio.org/)
* [tty.js](https://github.com/chjj/tty.js/)
