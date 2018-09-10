# Yapi Docker

> YApi 是一个可本地部署的、打通前后端及QA的、可视化的接口管理平台 [yapi.ymfe.org]

- 地址: `http://127.0.0.1:3000`
- 账号: `admin@admin.com`
- 密码: `ymfe.org`

--- 

## 提供的内容

#### 构建启动项目步骤
1. `./pull_yapi.sh` 拉取 yapi 源码
2. `./build.sh`  	构建yapi镜像 
3. `./init_run.sh` 	初始化并启动 mongo,yapi

项目已启动部署成功

#### 功能脚本

- `./restart.sh` 重启 mongo,yapi
- `./stop.sh`    停止 mongo,yapi
- `./clear.sh`   清理 mongo,yapi container


#### 注：
如直接通过`docker-compose up -d`启动服务，当mongo container已启动完成，但是实际mongo并没有完全启动，导致yapi启动时，报错Connected Refuse, 由于yapi没有重试机制，服务启动异常

#### 参考: 

- <a href="https://github.com/crper/yapi-docker/">github 参考代码 谢谢crper</a>
- <a href="https://www.jianshu.com/p/a97d2efb23c5">简书 参考博客</a>
- <a href="https://github.com/YMFE/yapi">官方Yapi github</a>
