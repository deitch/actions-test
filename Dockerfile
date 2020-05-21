FROM alpine:3.8 as certs

RUN apk --update add ca-certificates

FROM scratch as runner

ARG ARCH
ARG OS=linux

COPY ${ARCH} /file

CMD ["/file"]
