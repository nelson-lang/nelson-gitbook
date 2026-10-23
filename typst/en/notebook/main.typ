#import "nelson_help.typ": *

= Notebook

The Notebook module runs Notebook documents outside the editor.

 A Notebook mixes formatted text, code and its output in one document. This module reads the native #strong[.nlx]; container and the plain-text #strong[.m]; Notebook format, and executes their code cells against the base workspace — so a document can be run from the command line or a script.

== Functions

- #nlink(<notebook:nlx>)[nlx]: The Nelson Notebook document format (.nlx).
- #nlink(<notebook:notebook>)[notebook]: Run a Notebook document.


#nested[
#pagebreak(weak: true)
#include "nlx.typ"
#pagebreak(weak: true)
#include "notebook.typ"
]
