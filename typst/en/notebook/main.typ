#import "nelson_help.typ": *

= Notebook

The Notebook module runs Notebook documents outside the editor.

 A Notebook mixes formatted text, code and its output in one document. This module reads the native #strong[.nlx]; container and the plain-text #strong[.m]; Notebook format, and executes their code cells against the base workspace — so a document can be run from the command line or a script.

 Three step-by-step tutorials cover creating your first Notebook, its cells and controls, and how to run and share a document.

== Functions

- #nlink(<notebook:1_notebook_first_steps>)[Your first Nelson Notebook]: Create, run and save your first Notebook document.
- #nlink(<notebook:2_notebook_cells_and_controls>)[Notebook cells and controls]: The block kinds of a Notebook and the interactive controls.
- #nlink(<notebook:3_notebook_run_and_share>)[Run and share a Notebook]: Run a Notebook without the editor, and export or import it.
- #nlink(<notebook:nlx>)[nlx]: The Nelson Notebook document format (.nlx).
- #nlink(<notebook:notebook>)[notebook]: Run a Notebook document or open the Notebook editor.


#nested[
#pagebreak(weak: true)
#include "1_notebook_first_steps.typ"
#pagebreak(weak: true)
#include "2_notebook_cells_and_controls.typ"
#pagebreak(weak: true)
#include "3_notebook_run_and_share.typ"
#pagebreak(weak: true)
#include "nlx.typ"
#pagebreak(weak: true)
#include "notebook.typ"
]
