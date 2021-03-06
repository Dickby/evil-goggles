emacs ?= emacs
bemacs = $(emacs) -batch -l test/elpa.el

update:
	$(emacs) -batch -l test/make-update.el

compile: clean
	$(bemacs) -l test/make-compile.el

test:
	$(bemacs) -l test/make-test.el

clean:
	rm -f *.elc

checkdoc:
	$(bemacs) -l test/make-checkdoc.el

.PHONY: update compile test clean checkdoc
