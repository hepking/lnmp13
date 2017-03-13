FROM duckll/base

MAINTAINER DuckLL <a347liao@gmail.com>

# apt-get
RUN apt-fast update \
&& apt-fast -y install \
   net-tools \
&& apt-fast clean \

# install lnmp
&& wget -c http://soft.vpser.net/lnmp/lnmp1.3-full.tar.gz && tar -xvf ./lnmp1.3-full.tar.gz \
&& cd lnmp1.3-full && wget https://raw.githubusercontent.com/c21xdx/lnmp13/master/install.conf && cat install.conf | ./install.sh \
&& cd ../ && rm -rf lnmp1.3-full.tar.gz lnmp1.3-full \

EXPOSE 80 
EXPOSE 21 
EXPOSE 22 
EXPOSE 443

# set lnmp start
&& wget https://raw.githubusercontent.com/c21xdx/lnmp13/master/lnmp.sh -O /etc/my_init.d/lnmp.sh \
&& chmod +x /etc/my_init.d/lnmp.sh
