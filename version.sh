#!/bin/sh

VERSION=$(git log --pretty=format:'%h %ad [%an] %s' HEAD~...HEAD)
sed -i "2i version: $VERSION" README.md
