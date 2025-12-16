# Simple dockerfile to show status of git stuff
FROM ubuntu:24.04

RUN apt-get update && apt-get install -y git

WORKDIR /src
COPY . .

RUN git --version
RUN ls -la .
RUN git rev-parse HEAD