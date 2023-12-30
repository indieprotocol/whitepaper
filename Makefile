default: all
all:
	pandoc cover.md whitepaper.md --pdf-engine=lualatex -o whitepaper.pdf

