FROM archlinux:latest

WORKDIR /latex

RUN pacman -Syu --noconfirm \
	texlive-most \
	texlive-lang \
	biber

ENV PATH="${PATH}:/usr/bin/vendor_perl"

RUN pacman -Syu --noconfirm \
	make

ENTRYPOINT [ "/bin/sh", "-c" ]
CMD latexmk --version
