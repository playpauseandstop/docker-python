.PHONY: all build deploy run

DOCKER ?= docker
IMAGE ?= playpauseandstop/docker-python

all: build

build: .build
.build: Dockerfile
	$(DOCKER) build -t $(IMAGE) .
	touch $@

deploy:
ifeq ($(VERSION),)
	$(DOCKER) push $(IMAGE):$(VERSION)
else
	$(DOCKER) push $(IMAGE)
endif

run: build
	$(DOCKER) run --rm -it $(IMAGE) $(CMD)
