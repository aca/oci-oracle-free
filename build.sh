#!/usr/bin/env bash
set -euxo pipefail

bash buildContainerImage.sh -s -v 23.6
bash buildContainerImage.sh -s -v 23.6 -x
podman tag gvenzl/oracle-free:23.6-slim-faststart-arm64 harbor.alpha.tossinvest.bz/infra/oracle-free:23.6-slim-faststart-arm64
podman push harbor.alpha.tossinvest.bz/infra/oracle-free:23.6-slim-faststart-arm64
