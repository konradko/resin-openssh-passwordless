SHELL := /bin/bash

start:
	./init.sh

deploy:
	git push resin master

.PHONY: start deploy
