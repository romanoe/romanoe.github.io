#!/usr/bin/env sh
# abort on errors
set -e

# build & deploy
npm run build
gh-pages -d dist
