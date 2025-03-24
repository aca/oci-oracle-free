#!/usr/bin/env bash
set -euxo pipefail

# aria2c "https://download.oracle.com/otn-pub/otn_software/db-free/oracle-database-free-23ai-1.0-1.el8.aarch64.rpm" -o "oracle-database-free-23ai-23.7-1.0-1.el8.aarch64.rpm"
aria2c "https://download.oracle.com/otn-pub/otn_software/db-free/oracle-database-free-23ai-1.0-1.el8.x86_64.rpm" -o "oracle-database-free-23ai-23.7-1.0-1.el8.x86_64.rpm"
