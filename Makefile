REGISTRY_PATH=jwoglom/haproxy-docker-logging
build:
	echo Building to version $${VERSION}
	docker build -t ${REGISTRY_PATH}:latest -t ${REGISTRY_PATH}:$${VERSION} .

push:
	docker push ${REGISTRY_PATH}

all: build push
