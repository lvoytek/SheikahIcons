VERSION := 1.0.0
SHELL := /bin/bash

.PHONY:install
install:/usr/share/icons/Sheikah/index.theme

/usr/share/icons/Sheikah/index.theme:Sheikah/index.theme
	sudo rm -rf /usr/share/icons/Sheikah
	sudo cp -r  Sheikah/ /usr/share/icons/

.PHONY:remove
remove:
	sudo rm -rf /usr/share/icons/Sheikah

.PHONY:build
build:Sheikah.zip

Sheikah.zip:Sheikah/index.theme
	zip -r Sheikah.zip Sheikah

.PHONY:buildtar
buildtar:sheikah-icons-$(VERSION).tar.gz

sheikah-icons-$(VERSION).tar.gz:Sheikah/index.theme
	tar -czvf sheikah-icons-$(VERSION).tar.gz Sheikah/

Sheikah/index.theme:
	mkdir -p Sheikah
	rsync -aP --exclude Makefile --exclude .git --exclude snap --exclude Sheikah/ * Sheikah/

.PHONY:clean
clean:
	rm -rf Sheikah/
	rm -f Sheikah.zip
	rm -f sheikah-icons-$(VERSION).tar.gz
