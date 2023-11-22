Intro:
thermal-fluids model everywhere, only mention CFD in the thermal-fluids objective


% From MCNP manual (3.3.1.5 Repeated structures)

The primary goal of the repeated-structures capability is to make it possible to describe only once
the cells and surfaces of any structure that appears more than once in a geometry. Obvious
examples of geometry models constructed from repeated structures include a reactor core with
dozens of nearly identical fuel modules or a room containing complicated, nearly identical objects
arranged in an irregular order. Although the repeated-structures feature reduces input and
memory use, problems will not run any faster than with any other description. Examples of the
use of repeated structures cards appear in Section 4.1.3.


To add in lit review:

Another method using tabulated values to calculate the release rate and energy spectrum of gamma rays from spent fuel.
They calculated the gamma-ray dose rate around a PWR spent-fuel assembly using MCNP.

Using a homogenized model of the assembly causes the overestimation of the dose rates close to the assembly surface.

@article{doi:10.13182/NT77-A35393,
    author = {Ahmet Bozkurt and Nicholas Tsoulfanidis},
    title = {Modeling Gamma-Ray Dose Rate from a Spent Pressurized Water Reactor Fuel Assembly},
    journal = {Nuclear Technology},
    volume = {119},
    number = {1},
    pages = {38-47},
    year  = {1997},
    publisher = {Taylor & Francis},
    doi = {10.13182/NT77-A35393},
    URL = {https://doi.org/10.13182/NT77-A35393},
    eprint = {https://doi.org/10.13182/NT77-A35393}
}


Neutronics:
why to study UN https://www.nrc.gov/reactors/power/atf/longer-term.html

why to study SiC https://www.nrc.gov/reactors/power/atf/longer-term.html


min(rho_i) < rho_mix < max(rho_i)


In method:

The formal 3-step process consists of the following steps:
\begin{itemize}
  \item First, a neutron transport calculation determines the neutron flux spatial and energy distribution during reactor operation.
  \item Second, an activation calculation estimates the energy distribution and emission probability of the photon decays after reactor shutdown.
  \item Third, a photon-transport calculation evaluates the delayed gamma heating.
\end{itemize}

The first two steps in the formal 3-step process are accomplished coupling a transport and a depletion solvers.
Depletion solvers ignore the geometry of the system which signals the need for a transport solver.
The transport solver generates geometry- and material-dependent parameters that the depletion solver relies on.
The depletion solver then calculates the resulting material compositions and return this information to the transport solver and a cyclical transfer of information occurs.
The calculation workflow presented here relies on the MCNP-ORIGEN Activation Automation (MOAA) tool.


Ch where I talk about machine learning
Should results from prelim
THen based on this results the prefferred methods are: ...
For the full size ATR experiment we will use those.

Maybe for neutronics I should do a similar thing.
Fast calculation method  vs  database method for CASE2 --> then database method is superior and I use it for ATR.


# Review

* nuclear heating vs delayed heating
* gamma vs photon



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


# Improvements:

Introduction:
* Add nuclear research reactor history (very first paragraph)
* Add nuclear research reactor applications (very first paragraph)

Lit. Review:
* Add applications of nuclear heating capabilities for the design of nuclear facilites (section 2.1 second paragraph)

Methodology:
* MOAA:
  * explain what information COUPLE requires: spectrum, parents, childs, cross-section
  * units include: WATTS, GAMMWATTS, GSPECTRUM


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
