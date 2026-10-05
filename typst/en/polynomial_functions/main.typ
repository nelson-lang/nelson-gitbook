#import "nelson_help.typ": *

= Polynomials

The Polynomials module provides tools for creating, manipulating, and analyzing polynomials in Nelson.

 It supports polynomial evaluation, differentiation, integration, fitting, root finding, and matrix polynomial operations.

 This module enables efficient handling of polynomial expressions for mathematical modeling, curve fitting, and numerical analysis.

== Functions

- #nlink(<polynomial_functions:compan>)[compan]: Companion matrix.
- #nlink(<polynomial_functions:deconv>)[deconv]: Deconvolution and polynomial division.
- #nlink(<polynomial_functions:mkpp>)[mkpp]: Make a piecewise polynomial
- #nlink(<polynomial_functions:poly>)[poly]: Polynomial with specified roots or characteristic polynomial.
- #nlink(<polynomial_functions:polyder>)[polyder]: Polynomial differentiation.
- #nlink(<polynomial_functions:polyfit>)[polyfit]: Polynomial curve fitting.
- #nlink(<polynomial_functions:polyint>)[polyint]: Polynomial integration.
- #nlink(<polynomial_functions:polyval>)[polyval]: Polynomial evaluation.
- #nlink(<polynomial_functions:polyvalm>)[polyvalm]: Matrix polynomial evaluation.
- #nlink(<polynomial_functions:ppval>)[ppval]: Evaluate a piecewise polynomial form
- #nlink(<polynomial_functions:residue>)[residue]: Partial fraction expansion (residues)
- #nlink(<polynomial_functions:roots>)[roots]: Find polynomial roots.


#nested[
#pagebreak(weak: true)
#include "compan.typ"
#pagebreak(weak: true)
#include "deconv.typ"
#pagebreak(weak: true)
#include "mkpp.typ"
#pagebreak(weak: true)
#include "poly.typ"
#pagebreak(weak: true)
#include "polyder.typ"
#pagebreak(weak: true)
#include "polyfit.typ"
#pagebreak(weak: true)
#include "polyint.typ"
#pagebreak(weak: true)
#include "polyval.typ"
#pagebreak(weak: true)
#include "polyvalm.typ"
#pagebreak(weak: true)
#include "ppval.typ"
#pagebreak(weak: true)
#include "residue.typ"
#pagebreak(weak: true)
#include "roots.typ"
]
