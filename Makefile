APP_NAME := Template-ts
APP_VERSION := 0.0.1
BIN_NAME := template-ts

SHELL := /bin/bash

all:
	@node ./scripts/all.js

build:
	node ./scripts/constants.js
	npm run dev

commit: fmt
	node ./scripts/commit.js

dev: lint
	node ./scripts/constants.js
	npm run dev
	node ./dist/main.js

fmt:
	npm run fmt

help:
	node ./scripts/help.js

lint:
	npm run lint

start:
	@node ./dist/main.js

tag:
	node ./scripts/tag.js
