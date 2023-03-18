#!/bin/sh
docker run --rm  \
    --name grafana \
    --network grafana-prometheus \
    --network-alias grafana  \
    -p 9095:3000 --detach \
    -e "GF_SERVER_HTTP_PORT=3000" \
    grafana/grafana-oss:latest
