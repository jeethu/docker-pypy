FROM jeethu/pypy:5.0.1
MAINTAINER Jeethu Rao <jeethu@jeethurao.com>

RUN mkdir /usr/src/python
WORKDIR /usr/src/python

ONBUILD COPY requirements.txt /usr/src/app/
ONBUILD RUN pip install -r requirements.txt

ONBUILD COPY . /usr/src/app
