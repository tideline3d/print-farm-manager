#!/bin/bash

envsubst < /etc/prometheus/prometheus.yml  > /etc/prometheus/prometheus.envsubst && mv /etc/prometheus/prometheus.envsubst /etc/prometheus/prometheus.yml 

# Start Prometheus with the updated config file
chmod a+x ./prometheus/prometheus
./prometheus/prometheus --config.file=/etc/prometheus/prometheus.yml --storage.tsdb.path=/prometheus/data