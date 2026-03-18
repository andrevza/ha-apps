#!/bin/sh
set -e

echo "Starting PAI with config: ${PAI_CONFIG_FILE}"
exec pai-service -c "${PAI_CONFIG_FILE}"
