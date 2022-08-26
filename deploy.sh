#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

cd dist

echo 'www.cloudcode.sk' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

git push -f git@github.com:volarname/azure-devops-dashboard.git main:gh-pages

cd -
