# Dockie Development Environment

Modern development environment for [Docker](http://docker.io).


## Features

* Base
  * [git](http://www.git-scm.com/)
  * [OpenSSH](http://www.openssh.com/)
  * [Supervisor](http://supervisord.org/)
  * [Zsh](http://zsh.org)
  * [oh-my-zsh](http://ohmyz.sh)
* [Go](http://golang.org) 1.2.1
* [PHP](http://php.net/) 5.5.9
  * [Composer](http://getcomposer.org) 1.0.0-alpha8
  * [PHPUnit](http://phpunit.de)
* [Python](http://python.org) 2.7.5 and 3.4.0
  * [Pylint](http://pylint.org)
* [Node](http://nodejs.org) 0.10.28
  * [npm](http://npmjs.org)
  * [Bower](http://bower.io)
  * [CoffeeScript](http://coffeescript.org)
  * [ESLint](http://eslint.org)
  * [Grunt](http://gruntjs.com)
  * [gulp.js](http://gulpjs.com)
  * [component](http://component.io)
  * [Yeoman](http://yeoman.io)
* [Ruby](http://ruby-lang.org) 2.1.2
  * [Bundler](http://bundler.io)
  * [Compass](http://compass-style.org)
  * [Rake](https://github.com/jimweirich/rake)
  * [SASS](http://sass-lang.com)


## Usage

### Install

Pull `dockie/dockie` from the Docker repository:
```
docker pull dockie/dockie
```

Or build `dockie/dockie` from source:
```
git clone https://github.com/RobLoach/Dockie.git
cd Dockie
docker build -t dockie/dockie dockie
```

### Run

Start up the image, binding associated ports:
```
docker run -p 422:22 dockie/dockie
```


## Services

Service     | Port | Usage
------------|------|-------
SSH         | 22   | Connect with `ssh root@localhost -p 422` with the password `root`


## Environment Variables

Variable            | Default | Description
:-------------------|---------|:--------
`SSH_ROOT_PASSWORD` | `root`  | The password to use for the `root` SSH user.
