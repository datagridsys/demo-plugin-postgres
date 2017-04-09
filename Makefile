REPO=datagridsys
CONTAINER_NAME=demo-plugin-postgres

.PHONY: image \
		push

image:
	docker build -f Dockerfile -t ${REPO}/${CONTAINER_NAME} .

push:
	docker push ${REPO}/${CONTAINER_NAME}:latest
