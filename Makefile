IMAGE ?= maltehei/latex
TAG ?= latest

all: build push

build: Dockerfile
	docker build . -t $(IMAGE):$(TAG)

push: Dockerfile
	docker push $(IMAGE):$(TAG)
