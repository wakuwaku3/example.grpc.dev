FROM grpc/go

LABEL Name="example.rpc.protoc-go"
LABEL Version="1.0.0"

WORKDIR /
ADD ./init.sh init.sh

RUN mkdir -p /repo
VOLUME /go
VOLUME /repo
WORKDIR /repo

CMD ["bash", "/init.sh"]
