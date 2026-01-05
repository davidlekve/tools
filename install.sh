#!/usr/bin/env bash
set -e

BIN_DIR="$HOME/.local/bin"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/scripts"

mkdir -p "$BIN_DIR"

for script in "$SCRIPT_DIR"/*; do
  name="$(basename "$script")"
  ln -sf "$script" "$BIN_DIR/$name"
  chmod +x "$script"
  echo "Installed $name"
done

