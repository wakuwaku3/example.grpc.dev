FROM node:16-buster

LABEL Name="example.grpc.bff.backward"
LABEL Version="1.0.0"

WORKDIR /
ADD ./init.sh init.sh

ENV GITHUB_USER_NAME=github-user-name
ENV GITHUB_TOKEN=github-token
ENV GITHUB_EMAIL=github-email

RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-x86_64.zip
RUN unzip protoc-3.11.3-linux-x86_64.zip -d protoc3
RUN mv protoc3/bin/* /usr/local/bin/
RUN mv protoc3/include/* /usr/local/include/
RUN rm -rf protoc-3.11.3-linux-x86_64.zip protoc3

RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 3000
CMD ["bash", "/init.sh"]
