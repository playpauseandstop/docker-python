.PHONY: all build deploy run

DOCKER ?= docker
IMAGE ?= playpauseandstop/docker-python
TAG ?= latest

all: build

build: .build
.build: Dockerfile
	$(DOCKER) build -t $(IMAGE):$(TAG) .
	touch $@

deploy: build
	$(DOCKER) push $(IMAGE):$(TAG)

list-versions:
	pip-latest-release pip pre-commit tox virtualenv

run: build
	$(DOCKER) run --rm -it $(IMAGE):$(TAG) $(ARGS)
