PYPY_VERSION = 4.0.0

all: ubuntu ubuntu_onbuild debian debian_onbuild

ubuntu: ubuntu/Dockerfile
	docker build -f ubuntu/Dockerfile -t jeethu/pypy:$(PYPY_VERSION) .

ubuntu_onbuild: ubuntu/onbuild/Dockerfile
	docker build -f ubuntu/onbuild/Dockerfile -t jeethu/pypy:$(PYPY_VERSION)-onbuild .

debian: debian/Dockerfile
	docker build -f debian/Dockerfile -t jeethu/pypy:$(PYPY_VERSION)-debian .

debian_onbuild: debian/onbuild/Dockerfile
	docker build -f debian/onbuild/Dockerfile -t jeethu/pypy:$(PYPY_VERSION)-debian-onbuild .

clean:
	-docker rmi jeethu/pypy:$(PYPY_VERSION) jeethu/pypy:$(PYPY_VERSION)-onbuild jeethu/pypy:$(PYPY_VERSION)-debian jeethu/pypy:$(PYPY_VERSION)-debian-onbuild

