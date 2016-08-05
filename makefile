SHELL := /bin/bash

start:
	./setup_ssh.sh

deploy:
	git push resin master

.PHONY: start deploy
