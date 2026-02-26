#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

INPUT="$REPO_ROOT/software-factory-practitioners-guide-v01.md"
OUTPUT="$REPO_ROOT/software-factory-practitioners-guide-v01.html"
CSS="$REPO_ROOT/styles/pdf.css"

echo "Generating self-contained HTML..."
pandoc "$INPUT" \
  --from=gfm \
  --to=html5 \
  --standalone \
  --self-contained \
  --css="$CSS" \
  --metadata title="The Software Factory: A Practitioner's Guide" \
  --output="$OUTPUT"

echo "Done: $OUTPUT"
