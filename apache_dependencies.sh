## build apache ##
#!/bin/bash
yum -y install rpm-build
mkdir -p ~/rpmbuild/{SOURCES,SPECS,BUILD,RPMS,SRPMS}
cd ~/rpmbuild/SOURCES
rsync -Pav root@192.168.56.156:/root/rpmbuild/SOURCES/httpd-2.4.4*.tar.bz2 .
## Install apache depedencies ##
yum -y install autoconf zlib-devel libselinux-devel libuuid-devel apr-devel apr-util-devel pcre-devel openldap-devel lua-devel libxml2-devel distcache-devel openssl-devel
 
