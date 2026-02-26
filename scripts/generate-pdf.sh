#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

INPUT="$REPO_ROOT/software-factory-practitioners-guide.md"
OUTPUT="$REPO_ROOT/software-factory-practitioners-guide.pdf"

echo "Generating PDF..."
pandoc "$INPUT" \
  --pdf-engine=tectonic \
  --output="$OUTPUT" \
  --variable=geometry:margin=1in \
  --variable=fontsize:11pt \
  --variable=colorlinks:true \
  --variable=mainfont:"Charter" \
  --variable=monofont:"PT Mono"

echo "Done: $OUTPUT"
