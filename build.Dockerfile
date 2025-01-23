# 设定构建阶段基础镜像
FROM node:20.11.0-bullseye AS build

# 设定构建参数
ARG LGSG_APP_DATA_URL

# 设定工作目录
WORKDIR /app

# 拷贝应用
COPY ./ /app

# 准备
RUN sh shell/prepare.sh

# 构建
RUN sh shell/build.sh

# 设定基础镜像
FROM node:20.11.0-bullseye

# 设定工作目录
WORKDIR /app

# 拷贝应用
COPY --from=build /app/app .

# 设定入口点
ENTRYPOINT ["npm", "start"]