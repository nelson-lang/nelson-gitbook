#import "nelson_help.typ": *

= Special functions

The Special Functions module provides tools for performing advanced mathematical operations in Nelson.

 It includes functions for statistical distributions, combinatorial calculations, and other specialized mathematical computations that are essential in various scientific and engineering applications.

 This module enhances Nelson's capabilities by offering a range of functions that support complex analyses and modeling tasks.

== Functions

- #nlink(<special_functions:beta>)[beta]: Beta function.
- #nlink(<special_functions:betainc>)[betainc]: Incomplete beta function
- #nlink(<special_functions:betaln>)[betaln]: Logarithm of the beta function.
- #nlink(<special_functions:cross>)[cross]: Cross product.
- #nlink(<special_functions:dot>)[dot]: Dot product.
- #nlink(<special_functions:erf>)[erf]: Error function
- #nlink(<special_functions:erfc>)[erfc]: Complementary error function
- #nlink(<special_functions:erfcinv>)[erfcinv]: Inverse complementary error function
- #nlink(<special_functions:erfcx>)[erfcx]: Scaled complementary error function
- #nlink(<special_functions:erfinv>)[erfinv]: Inverse error function
- #nlink(<special_functions:factor>)[factor]: Prime factors
- #nlink(<special_functions:gamma>)[gamma]: Gamma special function
- #nlink(<special_functions:gammainc>)[gammainc]: Incomplete gamma function.
- #nlink(<special_functions:gammaln>)[gammaln]: Logarithm of gamma function
- #nlink(<special_functions:gcd>)[gcd]: Greatest common divisor
- #nlink(<special_functions:griddedInterpolant>)[griddedInterpolant]: Gridded data interpolant object
- #nlink(<special_functions:integral>)[integral]: Numerically evaluate integral (adaptive quadrature)
- #nlink(<special_functions:integral2>)[integral2]: Numerically evaluate double integral
- #nlink(<special_functions:integral3>)[integral3]: Numerically evaluate a triple integral.
- #nlink(<special_functions:integralInterpolant>)[integralInterpolant]: Definite integral with variable upper limit (integral interpolant object)
- #nlink(<special_functions:interp1>)[interp1]: 1-D data interpolation
- #nlink(<special_functions:interp2>)[interp2]: Interpolation for 2-D gridded data in meshgrid format
- #nlink(<special_functions:interp3>)[interp3]: Interpolation for 3-D gridded data in meshgrid format
- #nlink(<special_functions:interpn>)[interpn]: Interpolation for N-D gridded data in ndgrid format
- #nlink(<special_functions:isprime>)[isprime]: Determine which array elements are prime.
- #nlink(<special_functions:lcm>)[lcm]: Least common multiple.
- #nlink(<special_functions:makima>)[makima]: Modified Akima piecewise cubic interpolation.
- #nlink(<special_functions:pchip>)[pchip]: Piecewise Cubic Hermite Interpolating Polynomial (PCHIP).
- #nlink(<special_functions:peaks>)[peaks]: Peaks function
- #nlink(<special_functions:primes>)[primes]: Prime numbers less than or equal to input value
- #nlink(<special_functions:quadgk>)[quadgk]: Numerically evaluate an integral with Gauss-Kronrod quadrature.
- #nlink(<special_functions:spline>)[spline]: Cubic spline interpolation.


#nested[
#pagebreak(weak: true)
#include "beta.typ"
#pagebreak(weak: true)
#include "betainc.typ"
#pagebreak(weak: true)
#include "betaln.typ"
#pagebreak(weak: true)
#include "cross.typ"
#pagebreak(weak: true)
#include "dot.typ"
#pagebreak(weak: true)
#include "erf.typ"
#pagebreak(weak: true)
#include "erfc.typ"
#pagebreak(weak: true)
#include "erfcinv.typ"
#pagebreak(weak: true)
#include "erfcx.typ"
#pagebreak(weak: true)
#include "erfinv.typ"
#pagebreak(weak: true)
#include "factor.typ"
#pagebreak(weak: true)
#include "gamma.typ"
#pagebreak(weak: true)
#include "gammainc.typ"
#pagebreak(weak: true)
#include "gammaln.typ"
#pagebreak(weak: true)
#include "gcd.typ"
#pagebreak(weak: true)
#include "griddedInterpolant.typ"
#pagebreak(weak: true)
#include "integral.typ"
#pagebreak(weak: true)
#include "integral2.typ"
#pagebreak(weak: true)
#include "integral3.typ"
#pagebreak(weak: true)
#include "integralInterpolant.typ"
#pagebreak(weak: true)
#include "interp1.typ"
#pagebreak(weak: true)
#include "interp2.typ"
#pagebreak(weak: true)
#include "interp3.typ"
#pagebreak(weak: true)
#include "interpn.typ"
#pagebreak(weak: true)
#include "isprime.typ"
#pagebreak(weak: true)
#include "lcm.typ"
#pagebreak(weak: true)
#include "makima.typ"
#pagebreak(weak: true)
#include "pchip.typ"
#pagebreak(weak: true)
#include "peaks.typ"
#pagebreak(weak: true)
#include "primes.typ"
#pagebreak(weak: true)
#include "quadgk.typ"
#pagebreak(weak: true)
#include "spline.typ"
]
