## Install EPEL repo
```bash
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
```

## Install requirements
### Pre-requisites
```bash
sudo yum install -y git jq
```

### SCL
```bash
sudo yum install -y centos-release-scl devtoolset-8-gcc*
```

### GCC, make & C++ x86 headers
```bash
sudo yum install -y gcc-c++ make glibc-devel.i686
```

## Build
### Clone
```bash
git clone --recursive https://github.com/hotel-cz/uWebSockets.js.git
cd uWebSockets.js
```

### Updating from upstream
```bash
git config user.email "admin@venty.cz"
git config user.name "VentyCZ"

git pull --recurse-submodules upstream master

# Fix conflics & commit
git commit -m "Update from upstream"

TOKEN="" #https://github.com/settings/tokens
git push "https://VentyCZ:$TOKEN@github.com/hotel-cz/uWebSockets.js"
```

### Set C++ include file path
```bash
export CPATH='/usr/include'
```

### BUILD!
```bash
scl enable devtoolset-8 make
```
