#!/bin/sh

set -e

echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
export KUBECONFIG=/tmp/config

sh -c "kubectl $*"
