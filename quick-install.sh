#!/bin/bash
set -e

## 克隆仓库到本地
echo "clone repository..."
git clone -b main --depth=1  https://github.com/share-next/next-share.git next-share

## 进入目录
cd next-share

# 生成随机密码
RANDOM_PASSWORD=$(openssl rand -base64 12)

# 使用 sed 命令替换 docker-compose.yml 文件中的 MySQL 密码
sed -i "s/MYSQL_ROOT_PASSWORD: \"zspk3GKNEHwdfnph\"/MYSQL_ROOT_PASSWORD: \"$RANDOM_PASSWORD\"/" docker-compose.yml

# 使用 sed 命令替换 config.yaml 文件中的数据库密码
sed -i "s/pass: \"zspk3GKNEHwdfnph\"/pass: \"$RANDOM_PASSWORD\"/" config.yaml

chmod 755 ./deploy.sh

docker compose pull
docker compose up -d --remove-orphans

## 提示信息
echo "服务启动成功，请访问 http://localhost:8000"
echo "管理员后台地址 http://localhost:8000/admin"
echo "管理员账号: admin"
echo "管理员密码: 123456"
echo "请及时修改管理员密码"
