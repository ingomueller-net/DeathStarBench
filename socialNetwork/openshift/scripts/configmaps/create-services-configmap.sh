#!/bin/bash

cd $(dirname $0)/../..

oc create cm jaeger-config-yaml  --from-file=config/service-config.json -n social-network
