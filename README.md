# Ldsg App Builder

落地生根应用构建器

## 常用命令

```sh
# 构建本地应用，xxx 需要替换为相应 URL
LGSG_APP_DATA_URL=xxx \
NPM_CONFIG_REGISTRY=https://registry.npmmirror.com \
sh shell/build.sh

# 构建 docker 镜像，xxx 需要替换为相应 URL
docker build \
--build-arg LGSG_APP_DATA_URL=xxx \
--build-arg NPM_CONFIG_REGISTRY=https://registry.npmmirror.com \
--file build.Dockerfile \
-t ldsg-app:latest \
.
```
