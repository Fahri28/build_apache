#!/bin/bash
cd ~/rpmbuild/SOURCES
# Install remaining dependencies
yum -y install pcre-devel lua-devel libxml2-devel
# install mailcap
yum whatprovides "/etc/mime.types"
yum -y install mailcap
# install httpd
rpm -ivh ~/rpmbuild/RPMS/x86_64/httpd-*.rpm
