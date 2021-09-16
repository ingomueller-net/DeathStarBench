#!/bin/bash

NS=social-network

cd $(dirname $0)/../..

oc create cm jaeger-config-yaml   --from-file=config/service-config.json -n ${NS} --dry-run --save-config -o yaml | oc apply -f - -n ${NS}
