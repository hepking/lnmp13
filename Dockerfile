FROM tutum/ubuntu:utopic

MAINTAINER San

# apt-get
RUN sudo sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN apt-get update \
&& apt-get -y install apt-fast
RUN apt-fast -y install \
    net-tools \
&& apt-fast clean

EXPOSE 80 21 22 443
ENV ROOT_PASS lnmp123
