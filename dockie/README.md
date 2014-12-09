# Dockie Development Environment

Modern development environment for [Docker](http://docker.io).


## Features

* Base
  * [git](http://www.git-scm.com)
  * [Mercurial](http://mercurial.selenic.com)
  * [Subversion](https://subversion.apache.org)
  * [OpenSSH](http://www.openssh.com)
  * [Supervisor](http://supervisord.org)
  * [Zsh](http://zsh.org)
  * [oh-my-zsh](http://ohmyz.sh)
* [Go](http://golang.org) 1.2.1
* [PHP](http://php.net) 5.5.9
  * [Composer](http://getcomposer.org) 1.0.0-alpha9
  * [Drush](http://github.com/drush-ops/drush)
  * [PHPUnit](http://phpunit.de)
  * [HHVM](http://hhvm.com) 3.4.0
* [Python](http://python.org) 2.7.6 and 3.4.0
  * [Pylint](http://pylint.org)
* [Node](http://nodejs.org) 0.10.33
  * [npm](http://npmjs.org)
  * [Bower](http://bower.io)
  * [CoffeeScript](http://coffeescript.org)
  * [ESLint](http://eslint.org)
  * [Grunt](http://gruntjs.com)
  * [gulp.js](http://gulpjs.com)
  * [component](http://component.io)
  * [Yeoman](http://yeoman.io)
* [Ruby](http://ruby-lang.org) 2.1.5
  * [Gem](http://rubygems.org) 2.2.2
  * [Bundler](http://bundler.io)
  * [Compass](http://compass-style.org)
  * [Rake](https://github.com/jimweirich/rake)
  * [SASS](http://sass-lang.com)
* [Rust](http://rust-lang.org) 0.13.0-nightly
  * [Cargo](http://crates.io)


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
