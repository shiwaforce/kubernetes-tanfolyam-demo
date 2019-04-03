## 092. Feladat

```bash

// build

cd 092-java-spring-boot

cd mysql
docker build . -t docker.shiwaforce.com/1902-docker-kubernetes/anton/mysql-java
cd ..
cd app
docker build . -t docker.shiwaforce.com/1902-docker-kubernetes/anton/app
cd ..

// push

docker push docker.shiwaforce.com/1902-docker-kubernetes/anton/mysql-java
docker push docker.shiwaforce.com/1902-docker-kubernetes/anton/app

// run

docker run -d -p 3306:3306 --name mysql docker.shiwaforce.com/1902-docker-kubernetes/anton/mysql-java
docker run -d -p 80:80 --name php --link mysql:mysql docker.shiwaforce.com/1902-docker-kubernetes/anton/app

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