#!/bin/bash

if [ -z "$TOKEN" ]; then
    echo TOKEN not set!
    exit 1
fi

# Get our latest binaries
git fetch origin binaries
git checkout binaries

# Fetch upstream changes
git remote add upstream https://github.com/uNetworking/uWebSockets.js.git
git fetch upstream binaries
git checkout upstream/binaries -- package.json

git rm -f *.node
cp dist/*.node . && git add *.node
cp dist/uws.js . && git add uws.js
git status
git rev-parse master > source_commit && git add source_commit
git checkout master docs/index.d.ts && /usr/bin/mv docs/index.d.ts . && git add -A docs/ && git add ./index.d.ts
VERSION=$(curl -s https://api.github.com/repos/uNetworking/uWebSockets.js/releases/latest | jq -r '.name')
echo $VERSION
git config --global user.email "admin@venty.cz"
git config --global user.name "VentyCZ"
git commit -m "Update to release $VERSION"
UVERSION="$VERSION-C7"
git tag $UVERSION
git push "https://VentyCZ:$TOKEN@github.com/hotel-cz/uWebSockets.js" binaries
git push "https://VentyCZ:$TOKEN@github.com/hotel-cz/uWebSockets.js" $UVERSION
