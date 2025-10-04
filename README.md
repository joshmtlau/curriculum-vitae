# Curriculum Vitae

This CV is formatted using the [Awesome CV](https://github.com/posquit0/Awesome-CV) template.
It is compiled using the Docker image `dante-ev/latex-action`. The PDF may not
be rendered correctly if using another LaTeX compiler.

Assuming you have Docker installed, you can compile the CV by running:

```bash
docker run --rm -v $(pwd):/workdir danteev/texlive latexmk -xelatex cv.tex
```

Note the lack of `--it` flag. This ensures that the compiled PDF can be viewed
after the container stopped.

The compiled PDF will be available as `cv.pdf` in the current directory. You can
clear the LaTeX cache by running:

```bash
docker run --rm -v $(pwd):/workdir danteev/texlive latexmk -xelatex -c cv.tex
```

The GitHub Actions workflow will automatically compile the CV and push the
compiled PDF to the `pdf` branch.
You can then view the compiled PDF [here](https://joshmtlau.github.io/curriculum_vitae/pdf/cv.pdf).
