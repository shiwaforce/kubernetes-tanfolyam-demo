## 05. Feladat

```bash
docker run nginx

docker run -d -p 80:80 nginx
docker attach NNNNNNNNNN

docker run -d -p 80:80 --name web nginx
docker ps
docker attach web

Ctrl - c

docker run -d -p 80:80 --name web nginx
docker logs web

docker exec -it web bash 

docker stop web
docker start web
docker top web
docker stop web
docker ps

```
