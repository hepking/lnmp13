FROM tutum/centos:centos6

MAINTAINER San

# set lnmp start
RUN wget https://raw.githubusercontent.com/c21xdx/lnmp13/master/lnmp.sh \
&& chmod +x ./lnmp.sh
