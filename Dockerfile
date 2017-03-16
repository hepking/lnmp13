FROM tutum/ubuntu:utopic

MAINTAINER San

EXPOSE 80 21 22 443
ENV ROOT_PASS lnmp123

# apt-get
RUN apt-fast -y install \
    net-tools \
&& apt-fast clean
