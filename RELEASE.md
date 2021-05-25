## Build
[DOC](INSTALL.md)

## Release
```bash
git checkout binaries
/usr/bin/cp dist/*.node . && git add *.node
git rev-parse master > source_commit
git checkout master docs/index.d.ts && /usr/bin/cp docs/index.d.ts . && git add index.d.ts
```
