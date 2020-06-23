#!/bin/bash

docker login --username=15659036112 -p 1oveni1314 registry.cn-hangzhou.aliyuncs.com
docker tag app-backend:latest registry.cn-hangzhou.aliyuncs.com/hyhlife/app-backend:latest
docker push registry.cn-hangzhou.aliyuncs.com/hyhlife/app-backend:latest

if [ $# -gt 0 ] ; then
  tag=$1
  docker tag app-backend:latest registry.cn-hangzhou.aliyuncs.com/hyhlife/app-backend:${tag}
  docker push registry.cn-hangzhou.aliyuncs.com/hyhlife/app-backend:${tag}
fi
