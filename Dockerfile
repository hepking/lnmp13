FROM tutum/ubuntu:utopic

MAINTAINER San

# apt-get
RUN sudo sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list \
&& apt-get update

EXPOSE 80 21 22 443
ENV ROOT_PASS lnmp123
