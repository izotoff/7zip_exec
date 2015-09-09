FROM alpine
RUN apk add --update p7zip && rm -rf /var/cache/apk/*
ENTRYPOINT ["/usr/bin/7za"]
CMD ["--help"]
