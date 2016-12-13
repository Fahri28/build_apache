#!/bin/bash
cd ~/rpmbuild/SRPMS
rsync -Pav root@192.168.56.156:/root/rpmbuild/SRPMS/distcache-*.rpm .
rpmbuild --rebuild distcache-1.4.5-23.src.rpm
rpm -ivh ~/rpmbuild/RPMS/x86_64/distcache-*.rpm

