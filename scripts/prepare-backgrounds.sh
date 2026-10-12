#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p docs/previews
for source in backgrounds/*.webp; do
  name="$(basename "$source" .webp)"
  magick "$source" -resize 720x405 -quality 85 "docs/previews/$name.jpg"
done
magick backgrounds/00-arrival-4k.webp -resize 1440x810 -quality 85 docs/previews/hero.jpg
magick backgrounds/00-arrival-4k.webp -resize 1920x1080 preview.png
magick identify -format '%f %wx%h\n' backgrounds/*.webp
