#!/bin/sh
docker run \
	-p 9090:9090 \
	--network grafana-prometheus \
	--network-alias prometheus \
	--name my-prometheus \
    -v "$(pwd)/prometheus.yml":/etc/prometheus/prometheus.yml \
    -d \
    prom/prometheus
