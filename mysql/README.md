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

Service     | Port | Usage
------------|------|-------
SSH         | 22   | Connect with `ssh root@localhost -p 422` with the password `root`
MySQL       | 3306 | Connect on `localhost:3306`, user `root`, password `root`


## Environment Variables

Variable              | Default | Description
:---------------------|---------|:--------
`MYSQL_ROOT_PASSWORD` | `root` | The password to use for the `root` user.
`MYSQL_DATABASE`      | None   | A database to automatically create if it doesn't exit.
`MYSQL_USER`          | None   | The MySQL user to create with access to `MYSQL_DATABASE`.
`MYSQL_PASSWORD`      | Empty  | The password for `MYSQL_USER`
