## install apr depedencies ##
#!/bin/bash
cd ~/rpmbuild/SOURCES
rsync -Pav root@192.168.56.156:/root/rpmbuild/SOURCES/apr-*.tar.bz2 .
yum -y install autoconf libtool doxygen
rpmbuild -tb apr-1.5.2.tar.bz2
# Remove old APR from the system
yum remove apr-1.3.9-5.el6_2.x86_64
# Install our freshly build apr RPMs
rpm -ivh ~/rpmbuild/RPMS/x86_64/apr-*.rpm


