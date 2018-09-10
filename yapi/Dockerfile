# 基于 alpine镜像构建
FROM alpine:3.8
# 镜像维护者的信息
LABEL MAINTAINER = 'genghz'
# 基础环境构建
# - 指定仓库 为了快启用阿里镜像
# - 更新源
# - 安装基础环境包
# - 最后是删除一些缓存
# - 解压安装
# - 采用自动化构建npm
# !! yapi 官方的内网部署教程: https://yapi.ymfe.org/devops/index.html
COPY vendors.zip /

# 替换国内镜像
RUN echo -e "http://mirrors.aliyun.com/alpine/v3.8/main\nhttp://mirrors.aliyun.com/alpine/v3.8/community" > /etc/apk/repositories \
  && apk update \
  && apk add --no-cache git nodejs npm python gcc make \
  && rm -rf /var/cache/apk/* \
  && mkdir /yapi && cd /yapi && unzip /vendors.zip \
  && cd /yapi/vendors && npm install --production --registry https://registry.npm.taobao.org \
  && rm -f /vendors.zip

# 工作目录
WORKDIR /yapi/vendors
# 配置yapi的配置文件
COPY config.json /yapi/
# 复制执行脚本到容器的执行目录
COPY entrypoint.sh /usr/local/bin/
# 向外暴露的端口
EXPOSE 3000

# 配置入口为bash shell
ENTRYPOINT ["entrypoint.sh"]

# `make`: 编译依赖的
# `gcc`:  GNU编译器套装
# `python`: `python python-dev py-pip`这三个包包括了基本开发环境
# `git` : 不用说了
# `nodejs` : node