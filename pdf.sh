#!/usr/bin/env nix-shell
#!nix-shell -i bash -p pandoc -p texlive.combined.scheme-small -p nodejs -p inkscape

# src https://learnbyexample.github.io/customizing-pandoc/

if [ ! -e emoji/node_modules ]; then
  pushd emoji
  npm i
  popd
fi

pandoc README.md \
    -f gfm \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=1cm \
    -V mainfont="DejaVu Serif" \
    -V monofont="DejaVu Sans Mono" \
    --pdf-engine=xelatex \
    --filter=emoji/emoji_filter.js \
    -o README.pdf
