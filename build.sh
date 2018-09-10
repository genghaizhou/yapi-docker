#! /bin/bash

# 支持手动替换 vendors.zip 打包不同版本的镜像

# 切换目录
cd yapi

# 删除就镜像
imgId=`docker images | grep yapi | awk '{print $3}'`
if [ -n "$imgId" ]; then
	docker rmi $imgId
fi

# # 打包镜像 默认登录密码 ymfe.org
docker build -t yapi .
