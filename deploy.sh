#!/usr/bin/env sh


# abort on errors
set -e

# build
npm run build

#deploy
git add dist
git commit -m 'adding dist subtree'
git subtree push --prefix dist origin gh-pages
