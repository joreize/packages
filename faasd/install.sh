#!/bin/bash

set -o errexit

source <(curl --silent --location --fail https://pkg.dille.io/.scripts/source.sh)

unlock_sudo

github_install \
    --repo openfaas/faasd \
    --match name \
    --asset faasd \
    --type binary \
    --name faasd
