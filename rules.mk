%.pdf: %.ly
	lilypond $<

%.midi: %.ly
	lilypond $<


%.mp3: %.midi
	rm $@; \
	timidity $< -Ow -o - \
	| \
	ffmpeg -i - -acodec libmp3lame -ab 64k $@
