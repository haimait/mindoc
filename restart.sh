#!/bin/bash
echo "删除进程"
#killall mindoc
ps -ef |grep mindoc |awk '{print $2}'|xargs kill -9
echo "启动进程"
chmod +x mindoc
#go mod tidy
nohup ./mindoc >> access.log 2>&1 &

ps -aux | grep mindoc
