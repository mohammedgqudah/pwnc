PREFIX ?= $(HOME)/.local
BINDIR := $(PREFIX)/bin
SCRIPT := pwnc

install:
	mkdir -p "$(BINDIR)"
	ln -sf "$(PWD)/$(SCRIPT)" "$(BINDIR)/$(SCRIPT)"

uninstall:
	rm -f "$(BINDIR)/$(SCRIPT)"

