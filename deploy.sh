#!/usr/bin/env sh


# abort on errors
set -e

# build
npm run build

# navigate into the build output directorycd dist
# if you are deploying to a custom domain
echo 'www.noemiromano.ch' > CNAME
git add -A
git commit -m 'deploy'
git push origin main:gh-pages
cd -
