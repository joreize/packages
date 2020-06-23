#!/bin/bash

set -o errexit

: "${TARGET:=/usr/local}"

curl --silent https://api.github.com/repos/containerd/containerd/releases/latest | \
    jq --raw-output '.assets[] | select(.name | endswith(".linux-amd64.tar.gz")) | .browser_download_url' | \
    xargs curl --location --fail | \
    sudo tar -xzC ${TARGET}
