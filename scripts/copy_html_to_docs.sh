#!/usr/bin/env bash
set -euo pipefail

# Usage: ./scripts/copy_html_to_docs.sh [source-html-file]
# Copies a map HTML file into docs/map.html so GitHub Pages can serve it from /docs.

SRC=${1:-map.html}
DEST_DIR="docs"
DEST="$DEST_DIR/map.html"

if [ ! -f "$SRC" ]; then
  echo "Source HTML not found: $SRC"
  echo "Run the notebook or script to generate the interactive HTML, then re-run this script with the filename (or place the file manually in $DEST_DIR)."
  exit 2
fi

mkdir -p "$DEST_DIR"
cp "$SRC" "$DEST"
echo "Copied $SRC → $DEST"

echo "Next steps: git add $DEST && git commit -m 'Publish interactive map to docs/' && git push"
