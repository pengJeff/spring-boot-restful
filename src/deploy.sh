#!/bin/sh
BUILD_ID=DONTKILLME
pid=$(ps -ef|grep spring-boot-restful.jar|grep -v grep | awk '{print $2}')
cp -r /home/jeff/spring-boot-restful.jar /app/jar/restful.jar
function stop(){
    if [ -n "$pid" ] then
        echo "pid进程 :$pid"
        kill -9 $pid
    else
        echo "进程没有启动"
    fi
}

stop
sleep 5s
function start(){
    cd /app/jar
    /usr/bin/nohup java -jar restful.jar &
}
start
