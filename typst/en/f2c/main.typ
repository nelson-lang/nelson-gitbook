#import "nelson_help.typ": *

= Fortran to C

The F2C module allows Nelson users to convert legacy Fortran 77 source files into C code.

 This lets older Fortran routines compile, execute, and interact with Nelson variables from Nelson workflows.

 It is particularly useful for leveraging existing numerical algorithms or legacy scientific codebases within a modern Nelson environment.

== Functions

- #nlink(<f2c:f2c>)[f2c]: Fortran to C converter.


#nested[
#pagebreak(weak: true)
#include "f2c.typ"
]
