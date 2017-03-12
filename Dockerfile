FROM duckll/base

MAINTAINER San

EXPOSE 80 
EXPOSE 21 
EXPOSE 22 
EXPOSE 443

# apt-get
RUN apt-fast update
RUN apt-fast -y install
RUN net-tools
RUN apt-fast clean

# install lnmp
RUN wget http://soft.vpser.net/lnmp/lnmp1.3.tar.gz
RUN tar -xvf ./lnmp1.3.tar.gz
RUN cd lnmp1.3
RUN wget https://raw.githubusercontent.com/c21xdx/lnmp13/master/install.conf
RUN cat install.conf | ./install.sh
RUN cd ../
RUN rm -rf lnmp1.3.tar.gz lnmp1.3

# set lnmp start
RUN wget https://raw.githubusercontent.com/c21xdx/lnmp13/master/lnmp.sh -O /etc/my_init.d/lnmp.sh \
RUN chmod +x /etc/my_init.d/lnmp.sh
