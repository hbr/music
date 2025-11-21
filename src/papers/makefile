.PHONY: kodaly-tex kodaly-pdf

%.pdf: %.tex
	lilypond-book --output=../../_build $<
	(cd ../../_build; pdflatex $<)
	cp ../../_build/$@ .

kodaly-tex:
	lilypond-book --output=../../_build kodaly.tex

kodaly-pdf:
	(cd ../../_build; pdflatex kodaly)
	cp ../../_build/kodaly.pdf .
