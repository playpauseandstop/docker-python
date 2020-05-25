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

run: build
	$(DOCKER) run --rm -it $(IMAGE):$(TAG) $(ARGS)
