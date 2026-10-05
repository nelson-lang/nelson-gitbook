#import "nelson_help.typ": *

= Constructors functions

The Constructors module provides tools for creating fundamental numeric values, scalars, vectors, and matrices in Nelson.

 It includes constants, identity and diagonal matrices, and special values such as infinity, NaN, and machine precision.

 This module forms the basis for initializing data structures and performing mathematical and numerical computations.

== Functions

- #nlink(<constructors_functions:Inf>)[Inf]: Infinity
- #nlink(<constructors_functions:NaN>)[NaN]: Creates an Not-a-Number
- #nlink(<constructors_functions:diag>)[diag]: Get diagonal elements of matrix or create diagonal matrix.
- #nlink(<constructors_functions:eps>)[eps]: Creates an epsilon (machine precision)
- #nlink(<constructors_functions:eye>)[eye]: Creates an identity matrix.
- #nlink(<constructors_functions:i>)[i]: Pure Imaginary number.
- #nlink(<constructors_functions:j>)[j]: Imaginary unit.
- #nlink(<constructors_functions:ones>)[ones]: Creates an matrix made of ones.
- #nlink(<constructors_functions:pi>)[pi]: Ratio of circle's circumference to its diameter.
- #nlink(<constructors_functions:zeros>)[zeros]: Creates an matrix made of zeros.


#nested[
#pagebreak(weak: true)
#include "Inf.typ"
#pagebreak(weak: true)
#include "NaN.typ"
#pagebreak(weak: true)
#include "diag.typ"
#pagebreak(weak: true)
#include "eps.typ"
#pagebreak(weak: true)
#include "eye.typ"
#pagebreak(weak: true)
#include "i.typ"
#pagebreak(weak: true)
#include "j.typ"
#pagebreak(weak: true)
#include "ones.typ"
#pagebreak(weak: true)
#include "pi.typ"
#pagebreak(weak: true)
#include "zeros.typ"
]
