# up
docker run -d -p 3306:3306 --name mysql docker.shiwaforce.com/1902-docker-kubernetes/anton/mysql-php
docker run -d -p 80:80 --name php --link mysql:mysql docker.shiwaforce.com/1902-docker-kubernetes/anton/php
