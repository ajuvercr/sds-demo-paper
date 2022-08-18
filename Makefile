BUILDDIR=build
FILENAME=sds-demo

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
		--citeproc \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
		--to=latex \
		--output=$(BUILDDIR)/$(FILENAME).pdf \
    --number-sections \
		--pdf-engine=xelatex

html:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
		--citeproc \
		--from=markdown+tex_math_single_backslash+tex_math_dollars \
		--to=html5 \
		--output=$(BUILDDIR)/$(FILENAME).html \
		--mathjax \
		--self-contained

