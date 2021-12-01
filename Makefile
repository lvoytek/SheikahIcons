SHELL := /bin/bash

.PHONY:install
install:
	sudo rm -rf /usr/share/icons/Sheikah
	sudo mkdir -p /usr/share/icons/Sheikah
	sudo rsync -aP --exclude Makefile --exclude .git --exclude snap/ * /usr/share/icons/Sheikah/

.PHONY:remove
remove:
	sudo rm -rf /usr/share/icons/Sheikah

.PHONY:build
build:
	rm -rf Sheikah/
	mkdir -p Sheikah
	rsync -aP --exclude Makefile --exclude .git --exclude snap/ --exclude Sheikah/ * Sheikah/
	zip -r Sheikah.zip Sheikah
	rm -rf Sheikah/
