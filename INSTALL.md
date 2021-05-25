## Install EPEL repo
```bash
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
```

## Install requirements
### SCL
```bash
sudo yum install centos-release-scl
```

### GCC, make & C++ x86 headers
```bash
sudo yum install gcc-c++ make gcc-c++-aarch64-linux-gnu glibc-devel.i686
```

## Clone
```bash
git clone --recursive https://github.com/VentyCZ/uWebSockets.js.git
```

## Set C++ include file path
```bash
export CPATH='/usr/include'
```

## Enable newer GCC for new Bash session
```bash
scl enable devtoolset-7 bash
```

## BUILD!
```
make
```
