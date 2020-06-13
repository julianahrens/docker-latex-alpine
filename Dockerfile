FROM alpine:3.12.0

MAINTAINER ahrensjulian@web.de

RUN apk update
RUN apk add --no-cache biber
RUN apk add --no-cache texlive-full
RUN rm -rf /var/cache/apk/*
