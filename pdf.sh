#!/usr/bin/env nix-shell
#!nix-shell -i bash -p pandoc -p texlive.combined.scheme-small

# src https://learnbyexample.github.io/customizing-pandoc/

pandoc README.md \
    -f gfm \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=1cm \
    -V mainfont="DejaVu Serif" \
    -V monofont="DejaVu Sans Mono" \
    --pdf-engine=xelatex \
    -o README.pdf
