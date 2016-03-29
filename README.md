####部署DB
```shell
docker run \
--name test-mysql \
-p 3307:3306 \
-v /opt/gkbase-beta-data:/opt/gkbase-beta-data \
-e MYSQL_ROOT_PASSWORD=000000 \
-d mysql:latest --character-set-server=utf8
```
