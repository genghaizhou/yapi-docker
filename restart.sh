#! /bin/bash

docker-compose stop

docker-compose start

sleep 2

cid=`docker ps | grep yapi-web | awk '{print $1}'`

echo '正在重启 yapi-web:' $cid

docker restart $cid