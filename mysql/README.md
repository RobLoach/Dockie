# Forge: MySQL

A MySQL server, using [Docker Forge](http://github.com/robloach/forge).


## Features

* [Forge](../forge)
* [MySQL](http://www.mysql.com/) 5.5.37


## Usage

### Install

Pull `robloach/forge-mysql` from the Docker repository:
```
docker pull robloach/forge-mysql
```

Or build `robloach/forge-mysql` from source:
```
git clone https://github.com/RobLoach/forge.git
docker build -t robloach/forge-mysql forge/mysql
```

### Run

Run the image, binding associated ports:

```
docker run -d -p 222:22 -p 33306:3306 robloach/forge-mysql
```


## Services

Service     | Usage
------------|------------
SSH         | Connect with `ssh root@localhost -p 422` with the password `root`
MySQL       | Connect on `localhost:3306`, user `root`, password `root`


## Environment Variables

Variable            | Description | Default
--------------------|-----------------------
MYSQL_ROOT_PASSWORD | The password to use for the `root` user. | `root`
MYSQL_DATABASE      | A database to automatically create if it doesn't exit. | None
MYSQL_USER          | The MySQL user to create with access to `MYSQL_DATABASE`. | None
MYSQL_PASSWORD      | The password for `MYSQL_USER` | Empty
