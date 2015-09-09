FROM alpine
RUN echo http://mirror.yandex.ru/mirrors/alpine/v3.2/main > /etc/apk/repositories
RUN apk add --update p7zip && rm -rf /var/cache/apk/*
ENTRYPOINT ["/usr/bin/7za"]
CMD ["--help"]
