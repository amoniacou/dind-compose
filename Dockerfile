FROM docker:dind

MAINTAINER Pierre Pottié <pierre.pottie@businessdecision.com>

RUN apk add --no-cache python py-pip openssh-client git && pip install --no-cache-dir docker-compose
