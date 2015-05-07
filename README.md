A Docker image for PyPy 2.5.1
=============================

A minimal Ubuntu 14.04/Debian (Jessie) based docker image for PyPy 2.5.1. There are also `onbuild` variants for both.

- [pypy:2.5.1](https://github.com/jeethu/docker-pypy/blob/master/ubuntu/Dockerfile) __compatible with python-2.7.x__
- [pypy:2.5.1-onbuild](https://github.com/jeethu/docker-pypy/blob/master/ubuntu/onbuild/Dockerfile) __compatible with python-2.7.x__
- [pypy:2.5.1-debian](https://github.com/jeethu/docker-pypy/blob/master/debian/Dockerfile) __compatible with python-2.7.x__
- [pypy:2.5.1-debian-onbuild](https://github.com/jeethu/docker-pypy/blob/master/debian/onbuild/Dockerfile) __compatible with python-2.7.x__

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

Older PyPy builds are on the following branches

* [2.5.0](https://github.com/jeethu/docker-pypy/tree/2.5.0)
* [2.4.0](https://github.com/jeethu/docker-pypy/tree/2.4.0)

Trusted builds are available on the [Docker Hub Registry](https://registry.hub.docker.com/u/jeethu/pypy/).

Credits:
---

* [Najam Khan](https://github.com/najamkhn)
	* Contributed a Debian based build.
