## Install EPEL repo
```bash
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
```

## Install requirements
### SCL
```bash
sudo yum install centos-release-scl
sudo yum install devtoolset-8-gcc*
```

### GCC, make & C++ x86 headers
```bash
sudo yum install gcc-c++ make glibc-devel.i686
```

## Build
### Clone
```bash
git clone --recursive https://github.com/VentyCZ/uWebSockets.js.git
cd uWebSockets.js
```

### Set C++ include file path
```bash
export CPATH='/usr/include'
```

### Enable newer GCC for new Bash session
```bash
scl enable devtoolset-8 bash
```

### BUILD!
```
make
```
