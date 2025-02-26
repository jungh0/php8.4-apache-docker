# php8.4-apache-docker

## Install
```
docker build -t you/php84-apache .
```

## Start
```
docker-compose up -d
```

## Img Manage
```
docker save -o my_image.tar you/php84-apache
docker load -i my_image.tar
```