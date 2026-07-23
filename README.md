# LaTexActionContainer

A container based on debian which includes all the necessary packages for building a PDF with LaTex in a GitHub or Gitea action.

Includes hunspell for validating spellings.

## Example Action

```yaml
name: Build PDFs
run-name: ${{ gitea.actor }} generates PDFs
on:
  push:
  workflow_dispatch:

jobs:
  build-pdfs:
    runs-on: ubuntu-latest
    container: ghcr.io/manindark/latexactioncontainer:main
    steps:
      - uses: actions/checkout@v4
      - run: make all
      - uses: actions/upload-artifact@v3
        with:
          path: out/*.pdf
```

with a Makefile like this:

```makefile
all:
        mkdir -p out
        pdflatex -output-directory out example.tex
        cp references.bib out && cd out && bibtex example
        pdflatex -output-directory out example.tex
        pdflatex -output-directory out example.tex
```
