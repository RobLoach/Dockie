# Dockie Development Environment

Modern development environment for [Docker](http://docker.io).


## Features

* Base
  * [Ubuntu](http://www.ubuntu.com/) 14.10
  * [git](http://www.git-scm.com)
  * [Mercurial](http://mercurial.selenic.com)
  * [Subversion](https://subversion.apache.org)
  * [OpenSSH](http://www.openssh.com)
  * [Supervisor](http://supervisord.org)
  * [Zsh](http://zsh.org)
  * [oh-my-zsh](http://ohmyz.sh)
* [Go](http://golang.org) 1.2.1
* [PHP](http://php.net) 5.5.12
  * [Composer](http://getcomposer.org) 1.0.0-alpha9
  * [Drush](http://github.com/drush-ops/drush)
  * [PHPUnit](http://phpunit.de)
  * [HHVM](http://hhvm.com) 3.5.1
* [Python](http://python.org) 2.7.8 and 3.4.2
  * [Pylint](http://pylint.org)
* [Node](http://nodejs.org) 0.12.0
  * [npm](http://npmjs.org) 2.5.1
  * [io.js](http://iojs.org) 1.6.2
  * [nvm](https://github.com/creationix/nvm)
  * [Bower](http://bower.io)
  * [CoffeeScript](http://coffeescript.org)
  * [ESLint](http://eslint.org)
  * [Grunt](http://gruntjs.com)
  * [gulp.js](http://gulpjs.com)
  * [component](http://component.io)
  * [Yeoman](http://yeoman.io)
* [Ruby](http://ruby-lang.org) 2.1.2
  * [Gem](http://rubygems.org) 2.2.2
  * [Bundler](http://bundler.io) 1.8.3
  * [Compass](http://compass-style.org) 1.0.1
  * [Rake](https://github.com/jimweirich/rake)
  * [SASS](http://sass-lang.com) 3.4.13
* [Rust](http://rust-lang.org) 1.0.0-alpha.2
  * [Cargo](http://crates.io) 0.0.1-pre-nightly


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
