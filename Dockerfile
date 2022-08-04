FROM python:alpine3.16

RUN apk update && apk add curl git vim openssh
COPY ./ /workspace
WORKDIR /workspace

RUN sh -c 'git init'
RUN sh -c 'git clone https://github.com/opencv/opencv.git'