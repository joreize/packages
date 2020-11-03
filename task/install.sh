#!/bin/bash

set -o errexit

# shellcheck source=.scripts/source.sh
source <(curl --silent --location --fail https://pkg.dille.io/.scripts/source.sh)

unlock_sudo

github_install \
    --repo go-task/task \
    --match name \
    --asset task_linux_amd64.tar.gz \
    --type tarball \
    --include task