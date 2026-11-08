#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
exec "$ROOT/scripts/run-engine.sh" -m adcs.plugins.cli aspose.words.net \
  --catalog "$ROOT/config/product-platform-plugins.json" \
  --workspace "$ROOT/engine" \
  --python "$ROOT/plugins/words-net/.venv/bin/python" "$@"
