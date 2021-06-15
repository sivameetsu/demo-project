# T.B. Sample Django App

This is a sample Python Django App which runs on SQLite, PostgreSQL and MySQL.
You have two options: 
* Run using docker-compose
* Run it manually

## Run using Docker-Compose
There are two files included for running this sample app via SQLite, PostgreSQL and MySQL. 
### Docker-compose PostgreSQL
In order to run the application using PostgreSQL, run the following command: 
```console
$ docker-compose -f docker-compose-pgsql.yml up
```

### Docker-compose MySQL
In order to run the application using MySQL, run the following command: 
```console
$ docker-compose -f docker-compose-mysql.yml up
```

### Docker-compose SQLite
In order to run the application using SQLite, run the following command: 
```console
$ docker-compose -f docker-compose-sqlite.yml up
```

## Run it manually
If you want to understand how it works and you want to run it manually, try the following approaches. 

### Run using SQLite
In order to run using SQLite: 
```console
$ python3 -m venv .venv
$ source .venv/bin/activate
$ python3 manage.py migrate
$ python3 manage.py runserver
```

You should be able to see the SQLite logo on the first page.

### Run using PostgreSQL
In order to run on PostgreSQL, firstly you need to create a PostgreSQL database and allow a user to connect to it. Then, you need to run the following commands: 
```console
$ python3 -m venv .venv
$ source .venv/bin/activate
$ export POSTGRES_DB="PGSQL DATABASE NAME"
$ export POSTGRES_USER="PGSQL USERNAME"
$ export POSTGRES_PASSWORD="PGSQL PASSWORD"
$ export POSTGRES_HOST="PGSQL HOSTNAME"
$ export POSTGRES_PORT="PGSQL PORT - Usually 5432"
$ python3 manage.py migrate
$ python3 manage.py runserver
```

### Run using MySQL
In order to run on MySQL, firstly you need to create a MySQL database and allow a user to connect to it. Then, you need to run the following commands: 
```console
$ python3 -m venv .venv
$ source .venv/bin/activate
$ export MYSQL_DB="MYSQL DATABASE NAME"
$ export MYSQL_USER="MYSQL USERNAME"
$ export MYSQL_PASSWORD="MYSQL PASSWORD"
$ export MYSQL_HOST="MYSQL HOSTNAME"
$ export MYSQL_PORT="MYSQL PORT - Usually 3306"
$ python3 manage.py migrate
$ python3 manage.py runserver
```

