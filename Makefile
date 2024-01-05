default: all
all: refs.md
	pandoc cover.md whitepaper.md refs.md --pdf-engine=lualatex -o whitepaper.pdf

refs.md: whitepaper.md
	./scripts/make-refs.sh
