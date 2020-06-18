#!/bin/bash

set -o errexit

BASE=$(dirname $(readlink -f "$0"))
source ${BASE}/../common.sh

curl --silent https://api.github.com/repos/zaquestion/lab/releases/latest | \
    jq --raw-output '.assets[] | select(.name | endswith("_linux_amd64.tar.gz")) | .browser_download_url' | \
    xargs curl --location --fail | \
    sudo tar -xzC ${TARGET}/bin/ lab
