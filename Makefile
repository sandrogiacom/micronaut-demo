# defaul shell
SHELL = /bin/bash

build-app:
	./gradlew clean build; \
	docker build --force-rm -t micronaut-demo .

start-app:
	- docker run -p 8080:8080 --name micronaut-demo micronaut-demo

stop-app:
	- docker stop micronaut-demo

rm-app:	stop-app
	- docker rm micronaut-demo
