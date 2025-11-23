.PHONY: kodaly-tex kodaly-pdf

%.pdf: %.tex
	lilypond-book --output=../../_build $<
	rm *.out
	(cd ../../_build; pdflatex $<)
	cp ../../_build/$@ .
