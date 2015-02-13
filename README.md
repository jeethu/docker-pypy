A Docker image for PyPy 2.5.0
=============================

A minimal Ubuntu 14.04/Debian (Jessie) based docker image for PyPy 2.5.0. There are also `onbuild` variants for both.

- [pypy:2.5.0](https://github.com/jeethu/docker-pypy/blob/master/ubuntu/Dockerfile) __compatible with python-2.7.x__
- [pypy:2.5.0-onbuild](https://github.com/jeethu/docker-pypy/blob/master/ubuntu/onbuild/Dockerfile) __compatible with python-2.7.x__
- [pypy:2.5.0-debian](https://github.com/jeethu/docker-pypy/blob/master/debian/Dockerfile) __compatible with python-2.7.x__
- [pypy:2.5.0-debian-onbuild](https://github.com/jeethu/docker-pypy/blob/master/debian/onbuild/Dockerfile) __compatible with python-2.7.x__

Setup:
---

To build an Ubuntu 14.04 based image:
```
make ubuntu
```

To build a Debian(Jessie) based image:

```
make debian

```

To build everything:

```
make
```

Older PyPy 2.4.0 based Dockerfiles are on the [2.4.0](https://github.com/jeethu/docker-pypy/tree/2.4.0) branch.


Trusted builds are available on the [Docker Hub Registry](https://registry.hub.docker.com/u/jeethu/pypy/).

Credits:
---

* [Najam Khan](https://github.com/najamkhn)
	* Contributed a Debian based build.
