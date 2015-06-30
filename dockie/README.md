# Dockie Development Environment

Modern development environment for [Docker](http://docker.io).


## Features

* Base
  * [Ubuntu](http://www.ubuntu.com/) 15.04
  * [systemd](http://en.wikipedia.org/wiki/Systemd)
  * [git](http://www.git-scm.com)
  * [Mercurial](http://mercurial.selenic.com)
  * [Subversion](https://subversion.apache.org)
  * [OpenSSH](http://www.openssh.com)
  * [Supervisor](http://supervisord.org)
  * [Zsh](http://zsh.org)
  * [oh-my-zsh](http://ohmyz.sh)
* [Go](http://golang.org) 1.3.3
* [PHP](http://php.net) 5.6.4
  * [Composer](http://getcomposer.org) 1.0.0-alpha10
  * [Drush](http://github.com/drush-ops/drush) 7.0.0
  * [PHPUnit](http://phpunit.de)
* [Python](http://python.org) 2.7.9 and 3.4.3
  * [Pylint](http://pylint.org)
* [Node](http://nodejs.org) 0.12.5
  * [npm](http://npmjs.org) 2.11.2
  * [Bower](http://bower.io)
  * [CoffeeScript](http://coffeescript.org)
  * [ESLint](http://eslint.org)
  * [Grunt](http://gruntjs.com)
  * [gulp.js](http://gulpjs.com)
  * [component](http://component.io)
  * [Yeoman](http://yeoman.io)
* [Ruby](http://ruby-lang.org) 2.1.2
  * [Gem](http://rubygems.org) 2.2.2
  * [Bundler](http://bundler.io) 1.10.5
  * [Compass](http://compass-style.org) 1.0.3
  * [Rake](https://github.com/jimweirich/rake) 10.4.2
  * [SASS](http://sass-lang.com) 3.4.15
* [Rust](http://rust-lang.org) 1.1.0
  * [Cargo](http://crates.io) 0.4.0-nightly (4e5fdcd 2015-06-29)


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
docker run -p 2200:22 dockie/dockie
```


## Services

### SSH

Connect with `ssh root@localhost -p 2200` with the password `root`.


## Environment Variables

### `SSH_ROOT_PASSWORD`
The password to use for the `root` SSH user. Default: `root`


## Volumes

### `/app`
Intended location for the running application.
