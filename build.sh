#!/bin/bash

docker build -f Dockerfile -t jeethu/pypy:2.5.0 .
docker build -f onbuild/Dockerfile -t jeethu/pypy:2.5.0-onbuild .
