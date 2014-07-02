# Forge: Base

Base for a modern development environment, using [Docker](http://docker.io).


## Features

* Base
  * [git](http://www.git-scm.com/) 1.9.1
  * [OpenSSH](http://www.openssh.com/) 6.6
  * [Supervisor](http://supervisord.org/) 3.0
  * [Zsh](http://zsh.org) 5.0.2
  * [oh-my-zsh](http://ohmyz.sh)
* [Go](http://golang.org) 1.2.1
* [PHP](http://php.net/) 5.5.9
  * [Composer](http://getcomposer.org) 1.0.0-alpha8
  * [PHPUnit](http://phpunit.de) 4.1
* [Python](http://python.org) 2.7.5 and 3.4.0
  * [Pylint](http://pylint.org)
* [Node](http://nodejs.org) 0.10.28
  * [npm](http://npmjs.org)
  * [Bower](http://bower.io)
  * [CoffeeScript](http://coffeescript.org)
  * [Grunt](http://gruntjs.com)
  * [gulp.js](http://gulpjs.com)
  * [component](http://component.io)
  * [Yeoman](http://yeoman.io)
* [Ruby](http://ruby-lang.org) 1.9.3
  * [Rake](http://rake.rubyforge.org)
  * [Bundler](http://bundler.io)
  * [Compass](http://compass-style.org)


## Usage

### Install

Pull robloach/php from the Docker repository:
```
docker pull robloach/forge
```

Or build `robloach/forge` from source:
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

Service     | Port | Usage
------------|------|-------
SSH         | 22   | Connect with `ssh root@localhost -p 422` with the password `root`


## Environment Variables

Variable            | Default | Description
:-------------------|---------|:--------
`SSH_ROOT_PASSWORD` | `root`  | The password to use for the `root` SSH user.
