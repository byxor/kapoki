.PHONY: install

install:
	sudo cp -fa kapoki /usr/local/bin
	sudo cp -fa kapoki-completion.sh /etc/bash.completion.d
	cp -afR templates ~/.kapoki/
