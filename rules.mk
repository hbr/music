%.pdf: %.ly
	lilypond $<

%.midi: %.ly
	lilypond $<


%.mp3: %.midi
	timidity $< -Ow -o - \
	| \
	ffmpeg -i - -acodec libmp3lame -ab 64k $@
