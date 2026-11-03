FROM debian:trixie-slim

RUN 	apt update && \
	apt install -y texlive-latex-base texlive-lang-german texlive-latex-extra texlive-bibtex-extra make nodejs poppler-utils hunspell hunspell-en-us hunspell-en-gb hunspell-de-de-frami git && \
	apt clean && \
	rm -fr /var/lib/apt/lists/*
