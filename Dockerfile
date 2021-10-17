FROM centos:centos7

RUN yum -y update
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install git jq
RUN yum -y install centos-release-scl devtoolset-8-gcc*
RUN yum -y install gcc-c++ make glibc-devel.i686
RUN yum clean all

# Copy entrypoint.sh to the container
COPY entrypoint.sh /entrypoint.sh

# Run entrypoint.sh on container starts up
ENTRYPOINT ["/entrypoint.sh"]
