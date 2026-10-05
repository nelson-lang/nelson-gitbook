#import "nelson_help.typ": *

= Trigonometric functions

The Trigonometric Functions module provides functions for trigonometric calculations in Nelson.

 It includes standard trigonometric functions such as sine, cosine, and tangent, as well as their inverses and hyperbolic counterparts. The module supports angle measurements in both degrees and radians, allowing for flexible computations based on user preferences.

 The module also provides utilities for converting between degrees and radians in mathematical and engineering calculations.

== Functions

- #nlink(<trigonometric_functions:acos>)[acos]: Computes the inverse cosine in radians for each element of x.
- #nlink(<trigonometric_functions:acosd>)[acosd]: Inverse cosine in degrees.
- #nlink(<trigonometric_functions:acosh>)[acosh]: Inverse hyperbolic cosine.
- #nlink(<trigonometric_functions:acot>)[acot]: Inverse cotangent of angle in radians
- #nlink(<trigonometric_functions:acotd>)[acotd]: Inverse cotangent of angle in degrees
- #nlink(<trigonometric_functions:acoth>)[acoth]: Inverse hyperbolic cotangent.
- #nlink(<trigonometric_functions:acsc>)[acsc]: Inverse cosecant in radians.
- #nlink(<trigonometric_functions:acscd>)[acscd]: Inverse cosecant in degrees.
- #nlink(<trigonometric_functions:acsch>)[acsch]: Inverse hyperbolic cosecant.
- #nlink(<trigonometric_functions:asec>)[asec]: Inverse secant of angle in radians.
- #nlink(<trigonometric_functions:asecd>)[asecd]: Inverse secant of argument in degrees.
- #nlink(<trigonometric_functions:asech>)[asech]: Inverse hyperbolic secant of angle in radians.
- #nlink(<trigonometric_functions:asin>)[asin]: Computes the inverse sine in radians for each element of x.
- #nlink(<trigonometric_functions:asind>)[asind]: Inverse sine in degrees.
- #nlink(<trigonometric_functions:asinh>)[asinh]: Inverse hyperbolic sine function
- #nlink(<trigonometric_functions:atan>)[atan]: Computes the inverse tangent in radians for each element of x.
- #nlink(<trigonometric_functions:atan2>)[atan2]: Computes the four-quadrant inverse tangent.
- #nlink(<trigonometric_functions:atan2d>)[atan2d]: Four-quadrant inverse tangent in degrees.
- #nlink(<trigonometric_functions:atand>)[atand]: Inverse tangent in degrees.
- #nlink(<trigonometric_functions:atanh>)[atanh]: Computes the inverse hyperbolic tangent.
- #nlink(<trigonometric_functions:cart2pol>)[cart2pol]: Transforms Cartesian coordinates to polar or cylindrical.
- #nlink(<trigonometric_functions:cart2sph>)[cart2sph]: Transforms Cartesian to spherical coordinates.
- #nlink(<trigonometric_functions:cos>)[cos]: Computes the cosine in radians for each element of x.
- #nlink(<trigonometric_functions:cosd>)[cosd]: Computes the cosine in degree for each element of x.
- #nlink(<trigonometric_functions:cosh>)[cosh]: Computes the hyperbolic cosine in radians for each element of x.
- #nlink(<trigonometric_functions:cosm>)[cosm]: Computes the matrix cosine of a square matrix.
- #nlink(<trigonometric_functions:cospi>)[cospi]: Computes cos(X \* pi) accurately.
- #nlink(<trigonometric_functions:cot>)[cot]: Cotangent of angle in radians
- #nlink(<trigonometric_functions:cotd>)[cotd]: Cotangent of argument in degrees
- #nlink(<trigonometric_functions:coth>)[coth]: Hyperbolic cotangent.
- #nlink(<trigonometric_functions:csc>)[csc]: Cosecant of input angle in radians.
- #nlink(<trigonometric_functions:cscd>)[cscd]: Cosecant of argument in degrees.
- #nlink(<trigonometric_functions:csch>)[csch]: Hyperbolic cosecant.
- #nlink(<trigonometric_functions:deg2rad>)[deg2rad]: Convert angle from degrees to radians.
- #nlink(<trigonometric_functions:pol2cart>)[pol2cart]: Transforms polar or cylindrical coordinates to Cartesian.
- #nlink(<trigonometric_functions:rad2deg>)[rad2deg]: Convert angle from radians to degrees.
- #nlink(<trigonometric_functions:sec>)[sec]: Secant of angle in radians.
- #nlink(<trigonometric_functions:secd>)[secd]: Secant of argument in degrees.
- #nlink(<trigonometric_functions:sech>)[sech]: Hyperbolic secant.
- #nlink(<trigonometric_functions:sin>)[sin]: Computes the sine in radians for each element of x.
- #nlink(<trigonometric_functions:sind>)[sind]: Computes the sine in degree for each element of x.
- #nlink(<trigonometric_functions:sinh>)[sinh]: Computes the hyperbolic sine in radians for each element of x.
- #nlink(<trigonometric_functions:sinm>)[sinm]: Computes the matrix sinus of a square matrix.
- #nlink(<trigonometric_functions:sinpi>)[sinpi]: Computes sin(X \* pi) accurately.
- #nlink(<trigonometric_functions:sph2cart>)[sph2cart]: Transform spherical coordinates to Cartesian.
- #nlink(<trigonometric_functions:tan>)[tan]: Computes the tangent in radians for each element of x.
- #nlink(<trigonometric_functions:tand>)[tand]: Computes the tangent in degree for each element of x.
- #nlink(<trigonometric_functions:tanh>)[tanh]: Computes the hyperbolic tangent in radians for each element of x.
- #nlink(<trigonometric_functions:tanm>)[tanm]: Computes the matrix tangent of a square matrix.
- #nlink(<trigonometric_functions:wrapTo180>)[wrapTo180]: Wrap angle in degrees to \[-180, 180\].
- #nlink(<trigonometric_functions:wrapTo2Pi>)[wrapTo2Pi]: Wrap angle in radians to \[0, 2\*pi\].
- #nlink(<trigonometric_functions:wrapTo360>)[wrapTo360]: Wrap angle in degrees to \[0, 360\].
- #nlink(<trigonometric_functions:wrapToPi>)[wrapToPi]: Wrap angle in radians to \[-pi, pi\].


#nested[
#pagebreak(weak: true)
#include "acos.typ"
#pagebreak(weak: true)
#include "acosd.typ"
#pagebreak(weak: true)
#include "acosh.typ"
#pagebreak(weak: true)
#include "acot.typ"
#pagebreak(weak: true)
#include "acotd.typ"
#pagebreak(weak: true)
#include "acoth.typ"
#pagebreak(weak: true)
#include "acsc.typ"
#pagebreak(weak: true)
#include "acscd.typ"
#pagebreak(weak: true)
#include "acsch.typ"
#pagebreak(weak: true)
#include "asec.typ"
#pagebreak(weak: true)
#include "asecd.typ"
#pagebreak(weak: true)
#include "asech.typ"
#pagebreak(weak: true)
#include "asin.typ"
#pagebreak(weak: true)
#include "asind.typ"
#pagebreak(weak: true)
#include "asinh.typ"
#pagebreak(weak: true)
#include "atan.typ"
#pagebreak(weak: true)
#include "atan2.typ"
#pagebreak(weak: true)
#include "atan2d.typ"
#pagebreak(weak: true)
#include "atand.typ"
#pagebreak(weak: true)
#include "atanh.typ"
#pagebreak(weak: true)
#include "cart2pol.typ"
#pagebreak(weak: true)
#include "cart2sph.typ"
#pagebreak(weak: true)
#include "cos.typ"
#pagebreak(weak: true)
#include "cosd.typ"
#pagebreak(weak: true)
#include "cosh.typ"
#pagebreak(weak: true)
#include "cosm.typ"
#pagebreak(weak: true)
#include "cospi.typ"
#pagebreak(weak: true)
#include "cot.typ"
#pagebreak(weak: true)
#include "cotd.typ"
#pagebreak(weak: true)
#include "coth.typ"
#pagebreak(weak: true)
#include "csc.typ"
#pagebreak(weak: true)
#include "cscd.typ"
#pagebreak(weak: true)
#include "csch.typ"
#pagebreak(weak: true)
#include "deg2rad.typ"
#pagebreak(weak: true)
#include "pol2cart.typ"
#pagebreak(weak: true)
#include "rad2deg.typ"
#pagebreak(weak: true)
#include "sec.typ"
#pagebreak(weak: true)
#include "secd.typ"
#pagebreak(weak: true)
#include "sech.typ"
#pagebreak(weak: true)
#include "sin.typ"
#pagebreak(weak: true)
#include "sind.typ"
#pagebreak(weak: true)
#include "sinh.typ"
#pagebreak(weak: true)
#include "sinm.typ"
#pagebreak(weak: true)
#include "sinpi.typ"
#pagebreak(weak: true)
#include "sph2cart.typ"
#pagebreak(weak: true)
#include "tan.typ"
#pagebreak(weak: true)
#include "tand.typ"
#pagebreak(weak: true)
#include "tanh.typ"
#pagebreak(weak: true)
#include "tanm.typ"
#pagebreak(weak: true)
#include "wrapTo180.typ"
#pagebreak(weak: true)
#include "wrapTo2Pi.typ"
#pagebreak(weak: true)
#include "wrapTo360.typ"
#pagebreak(weak: true)
#include "wrapToPi.typ"
]
