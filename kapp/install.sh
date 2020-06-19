#!/bin/bash

set -o errexit

: "${TARGET:=/usr/local}"

curl --silent https://api.github.com/repos/k14s/kapp/releases/latest | \
    jq --raw-output '.assets[] | select(.name | endswith("-linux-amd64")) | .browser_download_url' | \
    xargs sudo curl --location --fail --output ${TARGET}/bin/kapp
sudo chmod +x ${TARGET}/bin/kapp
