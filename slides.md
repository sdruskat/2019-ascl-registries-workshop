---
title:  'The Citation File Format (CFF): <br/> Why, what, how?'
subtitle: 'Software Registries Collaboration Workshop,<br/>College Park, MD [TODO], 2019-11-13'
author: 
    - '<em>Stephan Druskat</em> (German Aerospace Center (DLR),<br/>Friedrich Schiller University Jena, Humboldt-Universität zu Berlin)<br/><img src="image/cc-by.png">'
theme: 'humboldt'
center: 'false'
slideNumber: 'true'
bibliography: 'literature.bib'
link-citations: no
revealjs-url: lib/revealjs/
mathjaxurl: 'lib/mathjax/MathJax.js'
aspectratio: 169
---

# Citation File Format: Why?

## Software citation has a metadata problem

- Growing awareness of the central role of software in research
- Call to treat software as a first-class citizen in research
- Cite software as you would cite a paper

. . .

- Citation-relevant metadata not readily available [TODO insert figure with paper title page + software figure]
- Available metadata not reliable  
(e.g., "correct" authors & contributors != GitHub committers)

## `CITATION` files

- "Put a file called `CITATION` in your source code repository, and include a BibTeX snippet" [@wilsonEncouragingCitationSoftware2013]
- Ubiquitous [TODO ?] file name
- BibTeX may not be [TODO eindeutig], and not fit for software citation based on the Principles [@smithSoftwareCitationPrinciples2016]

. . .

- Idea: Develop a standard format for `CITATION` files?  
(WSSSPE 5.1) [@druskatShouldCITATIONFiles2017],[@druskatStandardFormatCITATION2017]
- Outcome: Citation File Format (CFF) [@druskatCitationFileFormat2017] [TODO correct citation]


# What is the Citation File Format?<br/>(Hint: "What's in a name?")

## Features

- YAML 1.2 dictionary
- Human-/machine- -readable/-writable
- Self-descriptive (`CITATION.cff`, required `message` field)
- Modeled after the Software Citation Principles paper [@smithSoftwareCitationPrinciples2016]
- Compatible with CodeMeta, BibTeX, etc.
- Tooling available
- [TODO more?]

## What does it look like?

```yaml
cff-version: 1.1.0
message: "If you use MRT in your research, please cite it as below."
authors:
  - family-names: Druskat
    given-names: Stephan
    orcid: https://orcid.org/0000-0003-4925-7248
title: "My Research Tool"
version: 1.0.4
doi: 10.5281/zenodo.1234
date-released: 2017-12-18

# New in v1.1.0
identifiers:
  - type: "software-heritage"
    value: "swh:1:rel:99f6850374dc6597af01bd0ee1d3fc0699301b9f"
```

## What tooling is available?

- A schema for validation
- A validation tool
- A simple web form for manual completion (also as SaaS)
- A conversion tool (from/to CodeMeta, BibTeX, zenodo.json, ...)
- Others, e.g.:
  - A Maven plugin that creates CFF files from metadata
  - [TODO complete]


- Development supported by:  
German Aerospace Center (DLR) & Netherlands eScience Center

# How to use CFF?

## Target groups

::: {.large}
CFF has three main target groups:

1. Developers / Research Software Engineers
2. Researchers & other human "citers"
3. Upstream [TODO downstream?] users, e.g., software registries
:::

## Developers / RSEs ...

::: {.large}
... can make their software citable in a simple manner:

1. Create `CITATION.cff` file in source code repository
2. Complete file manually/semi-/automatically to desired degree of detail [TODO wording]
3. Update as required (manually/semi-/automatically)
4. Profit!
:::

## Researchers ...

::: {.large}
... can easily identify software citation metadata:

1. Find `CITATION.cff` in a repository
2. Read file & understand its purpose (from `message` field)
3. Cite software (version) appropriately
4. Profit!
:::

## Registries & other upstream [TODO] users ...

::: {.large}
... can use CFF as source for their own metadata model/format:

1. Check for `CITATION.cff` in ingested data
2. (Optionally: validate `CITATION.cff` + citation metadata)
3. Convert metadata to own model/format
4. Profit!
:::

# Thank you! 

## Thanks for listening, and thanks to ...

... CFF contributors (*Jurriaan Spaaks*, N. Chue Hong, R. Haines, M. Gruenpeter, J. Baker & many more); Alice Allen, Tom [TODO] & Michael [TODO] for the invitation; the Software Sustainability Institute  (UK) for funding activities around CFF.

::: {.center}

[citation-file.format.github.io](https://citation-file.format.github.io)  
[github.com/citation-file-format](https://github.com/citation-file-format)

stephan.druskat@dlr.de  
Twitter: [\@stdruskat](http://twitter.com/stdruskat)  
ORCiD [0000-0003-4925-7248](https://orcid.org/0000-0003-4925-7248)  
Slides: [doi:10.6084/m9.figshare.9918653](https://doi.org/10.6084/m9.figshare.9918653) [TODO]

:::

# Appendix

## References 