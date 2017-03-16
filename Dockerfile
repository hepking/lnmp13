FROM tutum/ubuntu:utopic

MAINTAINER San

# apt-get
RUN sudo sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list \
&& apt-get update \
&& apt-get install wget

# install lnmp
RUN wget -c http://soft.vpser.net/lnmp/lnmp1.3-full.tar.gz && tar -xvf ./lnmp1.3-full.tar.gz \
&& cd lnmp1.3-full && wget https://raw.githubusercontent.com/c21xdx/lnmp13/ubuntu/install.conf && cat install.conf | ./install.sh \
&& cd ../ && rm -rf lnmp1.3-full.tar.gz lnmp1.3-full

# set lnmp start
RUN wget https://raw.githubusercontent.com/c21xdx/lnmp13/ubuntu/lnmp.sh -O /etc/init.d/lnmp.sh \
&& chmod +x /etc/init.d/lnmp.sh
