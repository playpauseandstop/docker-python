DOCKER ?= docker
IMAGE ?= playpauseandstop/docker-python
TAG ?= latest

all: build

.PHONY: build
build: .build
.build: Dockerfile
	$(DOCKER) build -t $(IMAGE):$(TAG) .
	touch $@

.PHONY: list-versions
list-versions:
	./scripts/pip-latest-release.sh pip pipx poetry pre-commit tox virtualenv

.PHONY: run
run: build
	$(DOCKER) run --rm -it $(IMAGE):$(TAG) $(ARGS)
