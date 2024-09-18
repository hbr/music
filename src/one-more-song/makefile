main = one-more-song


.PHONY: pdf
pdf:
	lilypond --loglevel=WARNING $(main).ly 2>&1


.PHONY: mp3
mp3:
	timidity $(main).midi -Ow -o - \
	| ffmpeg -i - -acodec libmp3lame -ab 64k $(main).mp3


.PHONY: clear
clear:
	rm *.pdf *.midi
