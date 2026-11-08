#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$ROOT"
# Public component URLs must be filled before fetching dependencies.
if grep -q 'TODO_' "$ROOT/.gitmodules"; then
  echo "Component repository URLs are not configured. Complete .gitmodules and update the public commit pins; see docs/public-release.md." >&2
  exit 1
fi
# Do not recurse into the engine's historical documentation submodules.
git submodule update --init engine plugins/words-net
# The inherited source registry expects these roots even before corpus setup.
mkdir -p "$ROOT/engine/source-repo-docs" "$ROOT/engine/source-repo-apiref"
PYTHON=${PYTHON:-python3.12}
"$PYTHON" -m venv "$ROOT/.venv"
"$ROOT/.venv/bin/python" -m pip install -e "$ROOT/engine"
"$PYTHON" -m venv --without-pip "$ROOT/plugins/words-net/.venv"
"$ROOT/.venv/bin/python" "$ROOT/scripts/verify_registration.py"
