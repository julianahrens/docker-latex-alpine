FROM alpine:3.13.1

MAINTAINER Julian Ahrens docker@julianahrens.de

RUN apk update
RUN apk add --no-cache biber
RUN apk add --no-cache texlive-full
RUN rm -rf /var/cache/apk/*
