# Dockerfile for PyPy
FROM buildpack-deps:jessie-scm
MAINTAINER Jeethu Rao <jeethu@jeethurao.com>

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y gcc \
        libc6-dev make bzip2 --no-install-recommends

RUN set -e; \
    wget -q https://bitbucket.org/squeaky/portable-pypy/downloads/pypy-2.5.1-1-linux_x86_64-portable.tar.bz2 -P /tmp/; \
    tar -xjf /tmp/pypy-2.5.1-1-linux_x86_64-portable.tar.bz2 -C /usr/local/; \
    ln -s /usr/local/pypy-2.5.1-linux_x86_64-portable/bin/* /usr/local/bin/; \
    cp -R /usr/local/pypy-2.5.1-linux_x86_64-portable/virtualenv_support/ /usr/local/; \
    rm /tmp/pypy-2.5.1-1-linux_x86_64-portable.tar.bz2

CMD ["pypy"]
