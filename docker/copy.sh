#!/bin/sh

PROJECT_HOME=$0
DOCKER_HOME=$PROJECT_HOME/docker

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
#echo "begin copy sql "
#cp $PROJECT_HOME/sql/ry_20220814.sql $DOCKER_HOME/mysql/db
#cp $PROJECT_HOME/sql/ry_config_20220510.sql $DOCKER_HOME/mysql/db

# copy html
echo "begin copy html "
cp -r $PROJECT_HOME/ruoyi-ui/dist/** $DOCKER_HOME/nginx/html/dist


# copy jar
echo "begin copy ruoyi-gateway "
cp $PROJECT_HOME/ruoyi-gateway/target/ruoyi-gateway.jar $DOCKER_HOME/ruoyi/gateway/jar

echo "begin copy ruoyi-auth "
cp $PROJECT_HOME/ruoyi-auth/target/ruoyi-auth.jar $DOCKER_HOME/ruoyi/auth/jar

echo "begin copy ruoyi-visual "
cp $PROJECT_HOME/ruoyi-visual/ruoyi-monitor/target/ruoyi-visual-monitor.jar  $DOCKER_HOME/ruoyi/visual/monitor/jar

echo "begin copy ruoyi-modules-system "
cp $PROJECT_HOME/ruoyi-modules/ruoyi-system/target/ruoyi-modules-system.jar $DOCKER_HOME/ruoyi/modules/system/jar

echo "begin copy ruoyi-modules-file "
cp $PROJECT_HOME/ruoyi-modules/ruoyi-file/target/ruoyi-modules-file.jar $DOCKER_HOME/ruoyi/modules/file/jar

echo "begin copy ruoyi-modules-job "
cp $PROJECT_HOME/ruoyi-modules/ruoyi-job/target/ruoyi-modules-job.jar $DOCKER_HOME/ruoyi/modules/job/jar

echo "begin copy ruoyi-modules-gen "
cp $PROJECT_HOME/ruoyi-modules/ruoyi-gen/target/ruoyi-modules-gen.jar $DOCKER_HOME/ruoyi/modules/gen/jar

