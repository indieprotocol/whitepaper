# Indie Protocol Whitepaper

This repository contains the LaTeX source code for the Whitepaper. The instructions to clone the repository and build the PDF using pandoc are described below.

Currently the build instructions are for Ubuntu or MacOS but may successfully build on other OSs. Pull requests to update the whitepaper will be gladly accepted and reviewed.

## Installation Instructions

Install packages (Linux)
```bash
sudo apt-get update && sudo apt install texlive pandoc -y
```

Install packages (MacOS)
```bash
brew update && brew install texlive pandoc
```

Clone repository
```bash
git clone https://github.com/indieprotocol/whitepaper
```

## Build Instructions

Open the whitepaper directory
```bash
cd ~/whitepaper
```

Compile using make
```bash
make
```

Compile using pandoc directly
```bash
pandoc cover.md whitepaper.md --pdf-engine=lualatex -o whitepaper.pdf
```

After building, the pdf file will be output to:
```bash
./whitepaper.pdf
```
