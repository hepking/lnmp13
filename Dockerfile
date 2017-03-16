FROM tutum/ubuntu:utopic

MAINTAINER San

# apt-get
RUN apt-get update
RUN apt-fast -y install \
    net-tools \
&& apt-fast clean

EXPOSE 80 21 22 443
ENV ROOT_PASS lnmp123
