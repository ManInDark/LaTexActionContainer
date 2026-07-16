FROM debian:trixie-slim

RUN 	apt update && \
	apt install -y texlive-latex-base texlive-lang-german texlive-latex-extra texlive-bibtex-extra nodejs && \
	apt clean && \
	rm -fr /var/lib/apt/lists/*
