FROM tutum/centos:centos6
#FROM saltstack/centos-7-minimal
MAINTAINER iuact.com

# centos
RUN yum -y install wget 

# install lnmp
RUN wget -c http://soft.vpser.net/lnmp/lnmp1.3-full.tar.gz && tar -xvf ./lnmp1.3-full.tar.gz \
&& cd lnmp1.3-full && wget https://raw.githubusercontent.com/hepking/lnmp13/master/install.conf && cat install.conf | ./install.sh \
&& cd ../ && rm -rf lnmp1.3-full.tar.gz lnmp1.3-full

EXPOSE 80 21 22 443
ENV ROOT_PASS root

VOLUME /root
VOLUME /home

# set lnmp start
RUN wget https://raw.githubusercontent.com/hepking/lnmp13/master/lnmp.sh -O /etc/init.d/lnmp.sh \
&& chmod +x /etc/init.d/lnmp.sh
