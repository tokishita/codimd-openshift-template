FROM alpine
MAINTAINER tkishita

RUN apk --no-cache add git nodejs npm yarn bash make gcc g++ python openssl-dev

RUN cd /tmp && \
    wget https://github.com/hackmdio/codimd/archive/1.3.1.tar.gz && \
    tar zxvf 1.3.1.tar.gz && \
    cd /tmp/codimd-1.3.1 && \
    ./bin/setup && \
    npm run build && \
    npm cache clean --force && \
    yarn cache clean && \
    mv /tmp/codimd-1.3.1 /codimd && \
    chmod -R a+rwX /codimd && \
    rm /tmp -rf && \
    mkdir /tmp

ENV CMD_HOST 0.0.0.0
ENV CMD_PORT 8080

USER 1001
WORKDIR /codimd

EXPOSE 8080:8080/tcp

ENTRYPOINT ["node","app.js"]
