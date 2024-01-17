#!/usr/bin/env bash
set -euxo pipefail

# bash buildContainerImage.sh -v 23.3 -i 
# bash buildContainerImage.sh -v 23.3 -i -x

docker tag gvenzl/oracle-free:23.3-faststart acadx0/oracle-free:23.3-faststart-KO16MSWIN949
docker push acadx0/oracle-free:23.3-faststart-KO16MSWIN949

