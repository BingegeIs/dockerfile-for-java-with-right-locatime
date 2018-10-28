Dockerfile
====
此docker镜像是在openjdk:8-jdk-alpine基础上再次构建，添加了ttf-dejavu fontconfig，
设置了容器时区，用于解决时区问题导致java程序日期输出错误的问题。

Usage
---
```
docker pull bingege/openjdk8-alpine-ttf-localtime:0.0.1
```