FROM alpine:3.11

MAINTAINER ahrensjulian@web.de

RUN apk update
RUN apk add --no-cache biber
RUN apk add --no-cache texlive-full
RUN rm -rf /var/cache/apk/*
