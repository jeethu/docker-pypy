ubuntu: Dockerfile
	docker build -f Dockerfile -t jeethu/pypy:2.5.0 .
	docker build -f onbuild/Dockerfile -t jeethu/pypy:2.5.0-onbuild .

debian: debian/Dockerfile
	docker build -f debian/Dockerfile -t jeethu/pypy:2.5.0-debian .

all: ubuntu debian
