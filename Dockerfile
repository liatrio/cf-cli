FROM alpine:3.10.1
USER root
ENV PACKAGES "unzip curl"
RUN apk add --update $PACKAGES && rm -rf /var/cache/apk/*
RUN curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&source=github" | tar -zx -C /usr/local/bin
