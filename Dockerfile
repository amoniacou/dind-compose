FROM docker:dind

MAINTAINER Pierre Pottié <pierre.pottie@businessdecision.com>

RUN apk add --no-cache python py-pip openssh-client git curl \
    && curl -sLO https://github.com/github/git-lfs/releases/download/v2.5.1/git-lfs-linux-amd64-2.5.1.tar.gz \
    && tar zxvf git-lfs-linux-amd64-2.5.1.tar.gz && mv git-lfs-2.5.1/git-lfs /usr/bin/ \
    && rm -rf git-lfs-2.5.1 && rm -rf git-lfs-linux-amd64-2.5.1.tar.gz \
    && pip install --no-cache-dir docker-compose
