#!/usr/bin/env bash
set -euo pipefail

PROFILE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/profile" && pwd)"
OUT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/output" && pwd)"
WORK_DIR="${WORK_DIR:-/tmp/femboyos-work}"

if [[ $EUID -ne 0 ]]; then
  echo "Запусти сборку через sudo: sudo ./build.sh"
  exit 1
fi

pacman -Sy --needed --noconfirm archiso
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"
mkarchiso -v -r -w "$WORK_DIR" -o "$OUT_DIR" "$PROFILE_DIR"

echo
echo "Готово. ISO находится в:"
ls -lh "$OUT_DIR"
