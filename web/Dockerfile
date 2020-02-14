FROM node:12.14.0-buster

LABEL Name="example.grpc.web"
LABEL Version="1.0.0"

WORKDIR /
ADD ./init.sh init.sh

ENV GITHUB_USER_NAME=github-user-name
ENV GITHUB_TOKEN=github-token
ENV GITHUB_EMAIL=github-email
ENV REACT_APP_API_HOST=127.0.0.1
ENV REACT_APP_API_PORT=8000

RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 3000
CMD ["bash", "/init.sh"]
