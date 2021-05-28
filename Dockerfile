FROM golang:alpine

RUN sed -i 's/http\:\/\/dl-cdn.alpinelinux.org/https\:\/\/alpine.global.ssl.fastly.net/g' /etc/apk/repositories
RUN sed -i 's/https\:\/\/dl-cdn.alpinelinux.org/https\:\/\/alpine.global.ssl.fastly.net/g' /etc/apk/repositories

#RUN apk update && apk upgrade && apk add --no-cache --update \
RUN apk add --no-cache --update \
  bash \
  git \
  curl \
  nodejs \
  npm \
  && rm -rf /var/cache/apk/*