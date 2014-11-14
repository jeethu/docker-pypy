# Dockerfile for PyPy

FROM ubuntu:14.04
MAINTAINER Jeethu Rao <jeethu@jeethurao.com>

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN set -e; \
    umask 0022;echo 'APT::Install-Recommends "0";' | \
    tee /etc/apt/apt.conf.d/00DisableInstallRecommends; \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 68854915; \
    echo "deb http://ppa.launchpad.net/pypy/ppa/ubuntu trusty main" > /etc/apt/sources.list.d/pypy.list; \
    echo "deb-src http://ppa.launchpad.net/pypy/ppa/ubuntu trusty main" >> /etc/apt/sources.list.d/pypy.list; \
    apt-get -yq update; \
    apt-get -yq install wget pypy=2.4.0+dfsg-1~ppa2+trusty; \
    wget --no-check-certificate -qO- 'https://bootstrap.pypa.io/get-pip.py' | pypy; \
    pip install virtualenv; \
    apt-get purge -yq wget python python-minimal python2.7-minimal; \
    apt-get -yq dist-upgrade; \
    apt-get -yq autoremove; \
    apt-get -yq clean; \
    apt-get -yq autoclean

CMD ["pypy"]
