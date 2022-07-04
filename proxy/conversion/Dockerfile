FROM envoyproxy/envoy:v1.13.0

LABEL Name="example.grpc.proxy"
LABEL Version="1.0.0"

COPY ./envoy.yaml /etc/envoy/envoy.yaml
CMD /usr/local/bin/envoy -c /etc/envoy/envoy.yaml
EXPOSE 8000