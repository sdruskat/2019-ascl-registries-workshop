PANDOC_FLAGS=\
	-t revealjs -s --mathjax --filter pandoc-citeproc --template=templates/default.revealjs --csl=ieee-with-url-full-authors.csl -o slides.html slides.md


SRC_FILES := $(wildcard *.md)
SRC_FILES := $(filter-out README.md, ${SRC_FILES})


all: $(patsubst %.md,%.html, ${SRC_FILES})

%.html: %.md
	pandoc ${PANDOC_SELFCONTAINED_FLAGS} ${PANDOC_FLAGS} $< -o $@

css:
	sass lib/revealjs/css/theme/humboldt.scss lib/revealjs/css/theme/humboldt.css 

clean:
	rm -f *.html

.PHONY: all clean self
