SHELL := /bin/bash

start:
	./setup_ssh.sh

ssh:
	HOST_IP := ${HOST_IP}
	ssh-keygen -R $(HOST_IP)
	ssh root@$(HOST_IP)

.PHONY: start
