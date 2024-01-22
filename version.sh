#!/usr/bin/env nix-shell
#!nix-shell -i bash -p git

set -euo pipefail

VERSION=$(git log --pretty=format:'%h %ad [%an] %s' HEAD~...HEAD)
sed -i "2i version: $VERSION" README.md
