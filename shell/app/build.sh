# 切换至应用目录
cd app

# 安装依赖（包含 handlers 内项目）
pnpm i

# 安装 handlers 内项目至根项目依赖
pnpm i --workspace-root ./handlers/* 

# 构建
pnpm build