#!/bin/bash
#
# Script to fetch latest version of requested packages from PyPI
#
# Requirements
# ============
#
# - [curl](https://curl.se)
# - [jq](https://stedolan.github.io/jq/)
#
# Usage
# =====
#
# ```bash
# ./scripts/pip-latest-release.sh PROJECT [PROJECT ...]
# ```
#

set -euo pipefail

function get_project_latest_version() {
    curl -s "https://pypi.org/pypi/${1}/json" | jq -r ".info.version"
}

for project in "${@:1}"; do
    echo "${project}==$(get_project_latest_version ${project})"
done
