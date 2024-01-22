#!/usr/bin/env nix-shell
#!nix-shell -i bash -p git

set -euo pipefail

VERSION=$(git show --oneline  --pretty=format:'%h %ad [%an] %s' | head -n 1)
sed -i "2i version: $VERSION" README.md
