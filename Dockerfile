FROM docker:dind

MAINTAINER Pierre Pottié <pierre.pottie@businessdecision.com>

RUN apk add --no-cache py-pip && pip install docker-compose