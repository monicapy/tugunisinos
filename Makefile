UNAME := $(shell uname)
ifeq ($(UNAME), Darwin)
	PREFIX = ${HOME}/Library/texmf
else
	PREFIX = ${HOME}/texmf
endif
PREFIX_LATEX = $(PREFIX)/tex/latex/tugunisinos
PREFIX_BST = $(PREFIX)/bibtex/bst/tugunisinos

ARQ_LATEX = UNISINOSmonografia.cls UNISINOSartigo.cls
ARQ_BST = unisinos.bst

all:
	@echo "Execute 'make install' para instalar os arquivos em ${PREFIX}.  Assim eles ficam automaticamente disponiveis para todos os documentos."

install:
	install -d ${PREFIX_LATEX} ${PREFIX_BST}
	install -m 644 ${ARQ_LATEX} ${PREFIX_LATEX}
	install -m 644 ${ARQ_BST} ${PREFIX_BST}

clean:
	rm -f *~ *.{log,aux,dvi}
#	bash -c 'rm -f *~ *.{log,aux,dvi} exemplo*pdf *synctex.gz'
