#!/usr/bin/env sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$SCRIPT_DIR"

echo "Current directory: $PWD"
echo "Building Rust PDF builder..."
cargo build --release

PDF_BUILDER="$SCRIPT_DIR/target/release/nelson-pdf-builder"
LANGS="${1:-en,fr}"

"$PDF_BUILDER" --languages "$LANGS"
