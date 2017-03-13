FROM tutum/centos:centos6

MAINTAINER San

# centos
RUN yum -y update
RUN yum -y install wget 

# install lnmp
RUN wget -c http://soft.vpser.net/lnmp/lnmp1.3-full.tar.gz
RUN tar -xvf ./lnmp1.3-full.tar.gz
RUN cd lnmp1.3-full
RUN wget https://raw.githubusercontent.com/c21xdx/lnmp13/master/install.conf
RUN cat install.conf | /root/lnmp1.3-full/install.sh
RUN cd ../
RUN rm -rf lnmp1.3-full.tar.gz lnmp1.3-full

EXPOSE 80 
EXPOSE 21 
EXPOSE 22 
EXPOSE 443

ENV ROOT_PASS lnmp123

# set lnmp start
RUN wget https://raw.githubusercontent.com/c21xdx/lnmp13/master/lnmp.sh -O /etc/my_init.d/lnmp.sh \
RUN chmod +x /etc/my_init.d/lnmp.sh
