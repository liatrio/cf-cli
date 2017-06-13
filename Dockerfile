FROM alpine:3.3
ENV CF_CLI_VERSION "6.26.0"
ENV PACKAGES "unzip curl"
RUN apk add --update $PACKAGES && rm -rf /var/cache/apk/*
RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&version=${CF_CLI_VERSION}" | tar -zx -C /usr/local/bin
