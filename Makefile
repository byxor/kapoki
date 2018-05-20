.PHONY: install

install:
	sudo cp -fa kapoki.sh /usr/local/bin/kapoki
	sudo cp -fa kapoki-completion.sh /etc/bash.completion.d
	cp -afR templates ~/.kapoki/
