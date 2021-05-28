FROM golang:alpine

RUN sed -i 's/http\:\/\/dl-cdn.alpinelinux.org/http\:\/\/mirrors.gigenet.com/g' /etc/apk/repositories

RUN apk update && apk upgrade && apk add --no-cache --update \
  bash \
  git \
  curl \
  nodejs \
  npm \
  && rm -rf /var/cache/apk/*