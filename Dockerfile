# Docker file for date and locale set and ttf
# VERSION 0.0.1
# Author: yuweibin
# Image name: bingege/openjdk:8-jdk-alpine-ttf-localtime

#基础镜像
FROM openjdk:8-jdk-alpine

#作者
MAINTAINER yuweibin <269704385@qq.com>

#定义时区参数
ENV TZ=Asia/Shanghai

#设置环境变量
ENV LC_ALL zh_CN.utf8

#设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone

#安装必要应用
RUN set -xe \
	&& apk --no-cache add ttf-dejavu fontconfig

#设置编码
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8