FROM alpine:3.8 as certs

RUN ls /

RUN apk --update add ca-certificates

FROM scratch as runner

ARG ARCH
ARG OS=linux

COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY ${ARCH} /file

CMD ["/file"]
