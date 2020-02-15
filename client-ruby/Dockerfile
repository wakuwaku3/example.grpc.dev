FROM ruby:2.6.5

LABEL Name="example.grpc.ruby.client"
LABEL Version="1.0.0"

WORKDIR /
ADD ./init.sh init.sh

ENV GITHUB_USER_NAME=github-user-name
ENV GITHUB_TOKEN=github-token
ENV GITHUB_EMAIL=github-email
ENV API_HOST=api
ENV API_PORT=8080

RUN mkdir -p /repo
VOLUME /go
VOLUME /repo
WORKDIR /repo

CMD ["bash", "/init.sh"]
