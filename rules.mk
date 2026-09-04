%.pdf: %.ly
	lilypond $<

%.midi: %.ly
	lilypond $<


%-soprano.midi: %.ly
	lilypond $<

%-alto.midi: %.ly
	lilypond $<

%-tenor.midi: %.ly
	lilypond $<

%-bass.midi: %.ly
	lilypond $<


%.mp3: %.midi
	rm $@; \
	timidity $< -Ow -o - \
	| \
	ffmpeg -i - -acodec libmp3lame -ab 64k $@





%.tex.pdf: %.tex
	cp $< $(texbuilddir);     \
	(cd $(texbuilddir); pdflatex $<); \
	echo `basename $@ .tex.pdf`; \
	cp $(texbuilddir)/`basename $@ .tex.pdf`.pdf $@
