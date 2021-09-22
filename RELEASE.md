## Build
[DOC](INSTALL.md)

## Update binaries
```bash
TOKEN="" #https://github.com/settings/tokens

git checkout binaries
git rm -f *.node
/usr/bin/cp dist/*.node . && git add *.node
/usr/bin/cp dist/uws.js . && git add uws.js
git rev-parse master > source_commit && git add source_commit
git checkout master docs/index.d.ts && /usr/bin/mv docs/index.d.ts . && git add -A docs/ && git add ./index.d.ts
git clean -fd
VERSION=$(curl -s https://api.github.com/repos/uNetworking/uWebSockets.js/releases/latest | jq -r '.name')
git config user.email "admin@venty.cz"
git config user.name "VentyCZ"
git commit -m "Update to release $VERSION"
UVERSION="$VERSION-C7"
git tag $UVERSION
git push "https://VentyCZ:$TOKEN@github.com/hotel-cz/uWebSockets.js" binaries
git push "https://VentyCZ:$TOKEN@github.com/hotel-cz/uWebSockets.js" $UVERSION
```

## Back to master
```bash
git checkout master
git submodule update --init --recursive
```
