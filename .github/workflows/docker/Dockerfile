FROM centos:centos7

RUN yum -y update
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install git jq
RUN yum -y install gcc-c++ make glibc-devel.i686
RUN yum -y install centos-release-scl
RUN yum -y install devtoolset-8-gcc*

COPY ./build.sh /

# docker build --no-cache -t centos-build .
# docker run --name centos-build -t -d centos-build
# docker exec -it centos-build /bin/bash
