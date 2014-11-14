#!/bin/bash

docker build -t jeethu/pypy:2.4.0 .
cd onbuild
docker build -t jeethu/pypy:2.4.0-onbuild .
