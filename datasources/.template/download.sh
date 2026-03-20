#!/usr/bin/env bash
# Downloads raw data for this data source.
# Usage: ./download.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RAW_DIR="${SCRIPT_DIR}/data/raw"

mkdir -p "${RAW_DIR}"

# TODO: Replace with actual download URL and filename.
# Use -z flag to only download if newer than local copy.
# curl -z "${RAW_DIR}/data.csv" -o "${RAW_DIR}/data.csv" "https://example.com/data.csv"

echo "TODO: Implement download for this data source."
exit 1
