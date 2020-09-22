#!/bin/bash

set -o errexit

: "${TARGET:=/usr/local}"

curl --silent https://api.github.com/repos/marcosnils/bin/releases/latest | \
    jq --raw-output '.assets[] | select(.name | endswith("_Linux_x86_64")) | .browser_download_url' | \
    xargs sudo curl --location --fail --output ${TARGET}/bin/bin
sudo chmod +x ${TARGET}/bin/bin