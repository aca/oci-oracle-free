#!/usr/bin/env bash
set -euxo pipefail

bash -x buildContainerImage.sh -s -v 23.7
bash -x buildContainerImage.sh -s -v 23.7 -x
p/dman tag gvenzl/oracle-free:23.7-slim-faststart-arm64 acadx0/oracle-free-23.7-slim-faststart:$(uname -m)
podman push acadx0/oracle-free-23.7-slim-faststart:$(uname -m)
