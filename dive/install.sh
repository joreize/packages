#!/bin/bash

set -o errexit

source <(curl --silent --location --fail https://pkg.dille.io/.scripts/source.sh)

unlock_sudo

github_install \
    --repo wagoodman/dive \
    --match suffix \
    --asset _linux_amd64.tar.gz \
    --type tarball \
    --include dive
