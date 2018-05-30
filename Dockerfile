FROM alpine:3.7

ENV MINIFLUX_VERSION 2.0.5
ENV LISTEN_ADDR 0.0.0.0:8080

RUN apk --no-cache add curl ca-certificates

RUN curl -sSL https://github.com/miniflux/miniflux/releases/download/${MINIFLUX_VERSION}/miniflux-linux-amd64

EXPOSE 80 8080 443

USER nobody

LABEL url=https://github.com/miniflux/miniflux/
LABEL version=${MINIFLUX_VERSION}

CMD ["/usr/local/bin/miniflux"]
