#!/usr/bin/env bash
set -euxo pipefail

if [[ "$(uname -m)" == "x86_64" || "$(uname -m)" == "amd64" ]]; then
  ARCH="amd64"
  RPM_ARCH="x86_64"
else
  ARCH="arm64"
  RPM_ARCH="aarch64"
fi;

bash -x buildContainerImage.sh -s -v 23.7
bash -x buildContainerImage.sh -s -v 23.7 -x

podman tag gvenzl/oracle-free:23.7-slim-faststart-$ARCH acadx0/oracle-free:23.7-slim-faststart-$ARCH-KO16MSWIN949
podman push acadx0/oracle-free:23.7-slim-faststart-$ARCH-KO16MSWIN949

# docker.io/acadx0/oracle-free:23.7-slim-faststart-KO16MSWIN949-$(uname -m)
# docker.io/acadx0/oracle-free:23.7-slim-faststart-KO16MSWIN949-$(uname -m)
