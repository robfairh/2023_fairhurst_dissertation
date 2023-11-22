# My Reviews

* Present vs Past tense
* gamma vs photon
  * use gamma everywhere but in the bremstrahlung discussion


* irradiation database: generic material irradiation database


## Madicken

* How are you calculating the heat-transfer related material properties of the sample? I didn't see an equation (but perhaps I missed it). I understand how mixed material densities can be calculated based on mass-weighted sums. I also understand how that's possible for activation (for non-thick materials). But is that possible to do for heat transfer properties?? I know that strength properties are extremely dependent on the crystal structure and phase of a material -- so steels can have vastly different strength properties depending on their phase even if their alloys are different ratios of the same elements. I think the mass-weighting probably wouldn't work, then, for those properties. But are heat transfer properties like melting point, thermal conductivity, and heat capacity validly calculated this way?

The inputs are the experiment thermal properties and the coefficients defining the delayed heating in the experiment.
While the experiment thermal properties are supplied by the user, the delayed heating coefficients are calculated based on the experiment material composition.


# README by me

Template downloaded from: https://grad.illinois.edu/thesis/format

* To compile the file: make
* To clean extra files: make clean-aux
* To remove all generated files: make clean

Some dependencies were missing, and I had to do the following: <br />
sudo apt-get install -y texlive-bibtex-extra <br />
sudo apt install biber

* Some modifications:
  * It seems like the graduate college likes only chapters in the table of contents
  * I don't like it, so I modified `tocdepth` in `uiucthesis2021.cls`, `.dtx`, and `.sty`.
  * from \usepackage[style=ieee]{biblatex} to \usepackage[style=ieee, dashed=false]{biblatex}. Otherwise, ieee style uses a dash to hide the name of authors if consecutive references have the same authors.


# Original README

## uiucthesis class

A LaTeX package for formatting theses in the format required by the University of Illinois at Urbana-Champaign.

A class file and style file are provided. Both provide identical functionality except that the class file loads the "book" class with the [oneside] option.

## Files

- uiucthesis2021.dtx: Source for uiucthesis.cls, uiucthesis.sty and thesis-ex.tex
- uiucthesis2021.ins: Driver file for uiucthesis.dtx
- uiucthesis2021.pdf: Precompiled PDF file of documentation from .dtx file
- thesis.tex: Example main file
- uiucthesis2021.cls: Pregenerated class file
- uiucthesis2021.sty: Pregenerated style file (for backwards-compatibility)

## Installation

To (re)generate the `.ins`, `.cls`, and `.sty` file (and the documentation), simply compile `uiucthesis2021.dtx` like any other document.
E.g., using `latexmk`,

```bash
latexmk -pdf -synctex=1 uiucthesis2021.dtx
```
## Dependencies

This package uses the `setspace`, `geometry`, `babel`, `titletoc`, and `fancyhdr` packages.
`titlesec` is used for the example chapter heading format in `ruledchapters.sty`.

## Update Notes

- 3.1 (Zachary J Weiner)
  * Format table of contents entries with titletoc, prepend "Chapter" and "Appendix"
  * Place appendices after references, returning to `\mainmatter` so that appendices are still numbered
  * Add copyright and licensing information
- 3.0 (Zachary J Weiner)
  * Significant revision, obsolete options removed and source simplified
- 2.25b (Stephen Mayhew)
  * Removed the Vita Section
  * Added a Makefile
  * Changed all dates from 2009 -> 2014
  * Be careful when updating the date in the first line of uiucthesis2021.dtx! All numbers must be two digits, including month and day.


# Note concerning dependencies

We received the following message concerning dependencies from a student:

To wit, bibtex does not work, you need to use “biber" as a bibliography engine.
Instructions on how to change the engine from bibtex to biber on multiple LaTeX IDE can be found here https://tex.stackexchange.com/questions/154751/biblatex-with-biber-configuring-my-editor-to-avoid-undefined-citations
