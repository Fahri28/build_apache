##Install apr-util dependencies ##
#!/bin/bash
cd ~/rpmbuild/SOURCES
yum -y install postgresql-devel mysql-devel sqlite-devel freetds-devel unixODBC-devel nss-devel
rpmbuild -tb apr-util-1.5.3.tar.bz2


