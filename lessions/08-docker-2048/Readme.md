## 08 Feladat

https://github.com/gabrielecirulli/2048

```bash
.gitignore !!!

cd 08-docker-2084
git clone https://github.com/gabrielecirulli/2048

docker run -p 8080:80 \
           -v $(pwd)/2048:/usr/local/apache2/htdocs/ \
           httpd
```

## 08/2 Feladat
nginx

## 08/3 Feladat
Dockerfile nginx alapon
image-be bemasolli a 2048 forrast
