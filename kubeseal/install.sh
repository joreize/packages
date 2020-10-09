#!/bin/bash

set -o errexit

source <(curl --silent --location --fail https://pkg.dille.io/.scripts/source.sh)

unlock_sudo

github_install \
    --repo bitnami-labs/sealed-secrets \
    --match name \
    --asset kubeseal-linux-amd64 \
    --type binary \
    --name kubeseal
