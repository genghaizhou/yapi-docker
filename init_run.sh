#! /bin/bash

docker-compose up -d

sleep 5

cid=`docker ps | grep yapi-web | awk '{print $1}'`

echo '正在重启 yapi-web:' $cid

docker restart $cid