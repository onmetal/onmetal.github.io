HUGO_BIN=hugo

.PHONY: build

build:
	$(HUGO_BIN) -t hello-friend-ng

start-dev:
	$(HUGO_BIN) server --bind 0.0.0.0 -p 8080 --buildDrafts

start:
	$(HUGO_BIN) server --bind 0.0.0.0 -p 8080