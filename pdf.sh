#!/usr/bin/env nix-shell
#!nix-shell -i bash -p pandoc -p "pkgs.texlive.combine({ inherit (pkgs.texlive) scheme-small qrcode; })" -p nodejs -p inkscape -p imagemagick

set -euxo pipefail
shopt -s nullglob

# src https://learnbyexample.github.io/customizing-pandoc/

if [ ! -e emoji/node_modules ]; then
  pushd emoji
  npm i
  popd
fi

rm -rf small
mkdir small
for f in ./**/*.{jpg,png}; do
  mkdir -p small/$(dirname $f)
  magick convert $f -resize x264 small/$f
done

for f in *.md; do
  pandoc "$f" \
    --verbose \
    -H header.tex \
    -f gfm \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=1cm \
    -V mainfont="DejaVu Serif" \
    -V monofont="DejaVu Sans Mono" \
    --pdf-engine=xelatex \
    --filter=emoji/emoji_filter.js \
    -o ${f/".md"/".pdf"}
done
