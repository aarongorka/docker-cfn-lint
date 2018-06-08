CFN_LINT_VERSION = 1.6.0
IMAGE_NAME ?= aarongorka/cfn-lint:$(CFN_LINT_VERSION)
TAG = $(CFN_LINT_VERSION)

build:
	docker build -t $(IMAGE_NAME) .

pull:
	docker pull $(IMAGE_NAME)

shell:
	docker run --rm -it -v "$(pwd):/home/node:Z" --entrypoint=sh aarongorka/cfn-lint:$(CFN_LINT_VERSION)

tag:
	-git tag -d $(TAG)
	-git push origin :refs/tags/$(TAG)
	git tag $(TAG)
	git push origin $(TAG)
