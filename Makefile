SHELL := /bin/bash

.PHONY:install
install:
	sudo rm -rf /usr/share/icons/Sheikah
	sudo mkdir -p /usr/share/icons/Sheikah
	sudo rsync -aP --exclude Makefile --exclude .git * /usr/share/icons/Sheikah/

.PHONY:remove
remove:
	sudo rm -rf /usr/share/icons/Sheikah

.PHONY:build
build:
