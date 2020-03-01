# docker-latex-alpine
A minimal docker container for latex on alpine including texlive-full and biber

![](https://github.com/julianahrens/docker-latex-alpine/workflows/buildx-and-publish-image/badge.svg)
![](https://github.com/julianahrens/docker-latex-alpine/workflows/update-docker-hub-description/badge.svg)

## How-To Build your Latex Document
Assumption: Your main document ist called `document.tex`.
```bash
$ pdflatex --halt-on-error document.tex
$ biber document
$ pdflatex --halt-on-error document.tex
$ pdflatex --halt-on-error document.tex
```

## Using for CI Tools
The image is initially build for using in CI environments. Especially for group works it is really helpful to have a always same working environment.
### Gitlab CI/CD
```yml
image: julianahrens/latex-alpine:latest

build:
  stage: build
  script:
    - pdflatex -halt-on-error document.tex
    - biber document
    - pdflatex -halt-on-error document.tex
    - pdflatex -halt-on-error document.tex
  artifacts:
    paths:
      - document.pdf
      - document.log
    expire_in: 6 mos
```
