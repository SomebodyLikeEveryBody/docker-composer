# docker-composer
PHP Composer docker container

# How to use

## 1. Build

```shell
docker buildx build -t composer .
```

## 2. Launch 

```shell
docker container run -it -v ./myProject/:/var/www/html/ composer /bin/bash
```
