FROM golang:1.13.7-buster

LABEL Name="example.grpc.protoc-go"
LABEL Version="1.0.0"

WORKDIR /
ADD ./init.sh init.sh

ENV GITHUB_USER_NAME=github-user-name
ENV GITHUB_TOKEN=github-token
ENV GITHUB_EMAIL=github-email

RUN apt-get update && \
    apt-get -y install git unzip clang-format nodejs npm
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-x86_64.zip
RUN unzip protoc-3.11.3-linux-x86_64.zip -d protoc3
RUN mv protoc3/bin/* /usr/local/bin/
RUN mv protoc3/include/* /usr/local/include/
RUN rm -rf protoc-3.11.3-linux-x86_64.zip protoc3

RUN go get google.golang.org/grpc
RUN go get github.com/golang/protobuf/protoc-gen-go
RUN go get github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc

RUN npm install npm@latest -g

RUN mkdir -p /repo
VOLUME /go
VOLUME /repo
WORKDIR /repo

EXPOSE 52300
CMD ["bash", "/init.sh"]
