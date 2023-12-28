.PHONY: build tag push

build:
	docker build . -t rsyncd:build --no-cache

tag:
	docker tag rsyncd:build baekis1185/rsyncd:latest
	docker tag rsyncd:build baekis1185/rsyncd:1.0.0

push:
	docker push baekis1185/rsyncd:latest
	docker push baekis1185/rsyncd:1.0.0
