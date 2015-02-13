all: ubuntu ubuntu_onbuild debian debian_onbuild

ubuntu: ubuntu/Dockerfile
	docker build -f ubuntu/Dockerfile -t jeethu/pypy:2.5.0 .

ubuntu_onbuild: ubuntu/onbuild/Dockerfile
	docker build -f ubuntu/onbuild/Dockerfile -t jeethu/pypy:2.5.0-onbuild .

debian: debian/Dockerfile
	docker build -f debian/Dockerfile -t jeethu/pypy:2.5.0-debian .

debian_onbuild: debian/onbuild/Dockerfile
	docker build -f debian/onbuild/Dockerfile -t jeethu/pypy:2.5.0-debian-onbuild .

