FROM archlinux:latest

WORKDIR /latex

RUN pacman -Syu --noconfirm \
	texlive-most \
	texlive-lang \
	biber

RUN pacman -Syu --noconfirm \
	make

CMD latexmk --version
