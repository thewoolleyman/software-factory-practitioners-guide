#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

INPUT="$REPO_ROOT/software-factory-practitioners-guide-v01.md"
OUTPUT="$REPO_ROOT/software-factory-practitioners-guide-v01.pdf"
CSS="$REPO_ROOT/styles/pdf.css"

echo "Generating PDF..."
pandoc "$INPUT" \
  --from=gfm \
  --pdf-engine=weasyprint \
  --css="$CSS" \
  --output="$OUTPUT"

echo "Done: $OUTPUT"
