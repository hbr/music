main = alta_trinita_beata


.PHONY: pdf
pdf:
	lilypond $(main).ly


.PHONY: mp3
mp3:
	timidity $(main).midi -Ow -o - \
	| ffmpeg -i - -acodec libmp3lame -ab 64k $(main).mp3
