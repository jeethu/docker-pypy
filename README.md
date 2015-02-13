A Docker image for PyPy 2.5.0
=============================

A minimal Debian (Jessie)/Ubuntu 14.04 based docker image for PyPy 2.5.0. There's also an `onbuild` variant.

- [pypy:2.5.0](Dockerfile) __compatible with python-2.7.x__
- [pypy:2.5.0-debian](debian/Dockerfile) __compatible with python-2.7.x__
- [pypy:2.5.0-onbuild](onbuild/Dockerfile) __compatible with python-2.7.x__

Setup:
---

To create Ubuntu 14.04 container:
```
make ubuntu_container
```

To create Debian(Jessie) container:

```
make debian_container
```


Older PyPy 2.4.0 based Dockerfiles are on the [2.4.0](https://github.com/jeethu/docker-pypy/tree/2.4.0) branch.


Trusted builds are available on the [Docker Hub Registry](https://registry.hub.docker.com/u/jeethu/pypy/).

Credits:
---

* [Najam Khan](https://github.com/najamkhn)
	* Contributed a Debian based build
