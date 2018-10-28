# Docker file for date and locale set and ttf
# VERSION 0.0.1
# Author: yuweibin
# Image name: bingege/openjdk:openjdk8-alpine-ttf-localtime

#基础镜像
FROM openjdk:8-jdk-alpine

#作者
LABEL Author="yuweibin <269704385@qq.com>" 

#定义时区参数
ENV TIME_ZONE Asia/Shanghai

#设置时区
RUN apk add --no-cache tzdata \
&& echo "${TIME_ZONE}" > /etc/timezone \ 
&& ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime

#安装必要应用
RUN set -xe \
	&& apk --no-cache add ttf-dejavu fontconfig

CMD [ "sh", "-c", "echo $TIME_ZONE" ]
EXPOSE 8080
LABEL name="yuweibin"
LABEL VERSION="0.0.6"