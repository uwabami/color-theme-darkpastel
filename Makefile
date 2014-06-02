# -*- mode: makefile -*-
__SRC__		:= $(wildcard *.el)
ELFiles		:= $(__SRC__:%v.el=)
ELCFiles	:= $(ELFiles:%.el=%.elc)

EMACS	?= emacs

all: $(ELCFiles)

%.elc: %.el
	$(EMACS) -q -batch -f batch-byte-compile $<

clean:
	rm -fr $(ELCFiles)
