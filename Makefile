IMAGE_NAME = yannbernard/matter-esp-dev
CONTAINER_NAME = matter-dev-env

.PHONY: build run clean clean-image empty-cache

build:
	docker build -f ./Dockerfile -t $(IMAGE_NAME) .

run:
	docker run -it --rm -v $(shell pwd):/home/devuser/projects $(IMAGE_NAME)

clean:
	docker rm $(CONTAINER_NAME)

clean-image:
	docker rmi $(IMAGE_NAME)

empty-cache:
	docker builder prune --all --force
