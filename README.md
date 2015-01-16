# modrzew/latex

Docker container for LaTeX to PDF generation, using xelatex.

Forked from [natlownes/docker-latex](https://github.com/natlownes/docker-latex),
some credits go to the original author.

## Usage

File to convert need to be provided as first argument to `docker run`.

You need to mount volume to `/tmp/currentjob` in Docker; xelatex will be run
in that directory. I made it that way (rather than streaming `*.tex` files
to the bash script), because I keep my TeX files in a structure and there's
a lot of `\include`ing.

I usually mount current directory, like that:

```bash
docker pull modrzew/latex
docker run -v $(pwd):/tmp/currentjob modrzew/latex file.tex
```

As result, you'll get `file.pdf` in current directory.

## Fonts

Because I needed some custom fonts, I'm also running `fc-cache` before every
conversion. That's why you can simply add a volume to `/root/.fonts` with your
custom fonts, and they will be available for xelatex.

