## 091. Feladat

```bash

// build

cd 091-php-mysql

cd mysql
docker build . -t docker.shiwaforce.com/1902-docker-kubernetes/anton/mysql-php
cd ..
cd php
docker build . -t docker.shiwaforce.com/1902-docker-kubernetes/anton/php
cd ..

// push

docker push docker.shiwaforce.com/1902-docker-kubernetes/anton/mysql-php
docker push docker.shiwaforce.com/1902-docker-kubernetes/anton/php

// run

docker run -d -p 3306:3306 --name mysql docker.shiwaforce.com/1902-docker-kubernetes/anton/mysql-php
docker run -d -p 80:80 --name php --link mysql:mysql docker.shiwaforce.com/1902-docker-kubernetes/anton/php

// stop

docker stop php mysql
docker rm php mysql

## feladat

build.sh
push.sh
pull.sh
up.sh
down.sh

## feladat++
phpmyadmin

```