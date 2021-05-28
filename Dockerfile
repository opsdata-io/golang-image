FROM golang:alpine

RUN apk add -q \
  bash \
  git \
  curl \
  nodejs \
  npm \
  && rm -rf /var/cache/apk/*