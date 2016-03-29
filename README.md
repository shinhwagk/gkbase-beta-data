####1.部署DB
```shell
conid=$(docker run \
--name test-mysql \
-p 3307:3306 \
-v /opt/gkbase-beta-data:/opt/gkbase-beta-data \
-e MYSQL_ROOT_PASSWORD=000000 \
-d mysql:latest --character-set-server=utf8)
```
####2.更改时区
```shell
docker exec $conid cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
```

####3.下载数据
```shell
git clone https://github.com/shinhwagk/gkbase-beta-data
```
