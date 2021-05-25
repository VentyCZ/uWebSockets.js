## Build
[DOC](INSTALL.md)

## Release
```bash
TOKEN=""

git checkout binaries
/usr/bin/rm uws_*.node
/usr/bin/cp dist/*.node . && git add *.node
/usr/bin/cp dist/uws.js . && git add uws.js
git rev-parse master > source_commit && git add source_commit
git checkout master docs/index.d.ts && /usr/bin/cp docs/index.d.ts . && git add index.d.ts
git checkout .
VERSION=$(curl -s https://api.github.com/repos/uNetworking/uWebSockets.js/releases/latest | jq -r '.name')
git config user.email "admin@venty.cz"
git config user.name "VentyCZ"
git commit -m "Update to release $VERSION"
UVERSION="$VERSION-C7"
git tag $UVERSION
git push "https://VentyCZ:$TOKEN@github.com/VentyCZ/uWebSockets.js" binaries
git push "https://VentyCZ:$TOKEN@github.com/VentyCZ/uWebSockets.js" $UVERSION
```
