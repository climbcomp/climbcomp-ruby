version := $(shell cat VERSION)

# CI targets

.PHONY: build
build:
	docker-compose build app

.PHONY: test
test:
	docker-compose run --rm app rake test

.PHONY: release
release:
	docker-compose run --rm app ./bin/release

# local targets

.PHONY: bash
bash:
	docker-compose run --rm app bash

.PHONY: run
run:
	docker-compose run --rm app climbcomp
