# [maltehei/latex](https://hub.docker.com/r/maltehei/latex)

This image is based on [archlinux](https://hub.docker.com/_/archlinux/) and provides these packages:

- [texlive-most](https://archlinux.org/groups/x86_64/texlive-most/)
- [texlive-lang](https://archlinux.org/groups/x86_64/texlive-lang/)
- [biber](https://archlinux.org/packages/community/any/biber/)
- [make](https://archlinux.org/packages/core/x86_64/make/)

## Usage

Compile a simple thesis:

```bash
docker run --rm -v $(pwd):/latex maltehei/latex latexmk thesis.tex
```

Use `make` to build your project:

```bash
docker run --rm -v $(pwd):/latex maltehei/latex make
```
