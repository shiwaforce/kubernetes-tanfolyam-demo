## 06 Feladat  

```bash
docker build . -t docker.shiwaforce.com/1902-docker-kubernetes/anton/nginx-hello:v1.0

docker push docker.shiwaforce.com/1902-docker-kubernetes/anton/nginx-hello:v1.0

docker pull docker.shiwaforce.com/1902-docker-kubernetes/anton/nginx-hello:v1.0

docker run -p80:80 --name nginx-hello docker.shiwaforce.com/1902-docker-kubernetes/anton/nginx-hello:v1.0

## 06/2 Szorgalmi feladat
v2.0

```