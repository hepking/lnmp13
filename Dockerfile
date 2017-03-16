FROM tutum/ubuntu:utopic

MAINTAINER San

# apt-get
RUN sudo sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list \
&& apt-get update \
&& apt-get install wget

# set lnmp start
RUN wget https://raw.githubusercontent.com/DuckLL/lnmp/ubuntu/lnmp.sh -O /etc/my_init.d/lnmp.sh \
&& chmod +x /etc/my_init.d/lnmp.sh


