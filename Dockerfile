FROM scratch as runner

ARG ARCH
ARG OS=linux

COPY ${ARCH} /file

CMD ["/file"]
