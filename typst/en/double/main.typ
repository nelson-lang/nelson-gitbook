#import "nelson_help.typ": *

= Double

The Double Type module provides tools for handling double-precision numeric values in Nelson.

 It enables conversion to double precision and offers access to key numeric limits, supporting high-accuracy computations and reliable handling of large or small floating-point numbers in mathematical and scientific applications.

== Functions

- #nlink(<double:double>)[double]: Converts a variable to double precision type.
- #nlink(<double:flintmax>)[flintmax]: Largest consecutive integer in floating-point format.
- #nlink(<double:realmax>)[realmax]: Largest positive floating-point number.
- #nlink(<double:realmin>)[realmin]: Smallest positive floating-point number.


#nested[
#pagebreak(weak: true)
#include "double.typ"
#pagebreak(weak: true)
#include "flintmax.typ"
#pagebreak(weak: true)
#include "realmax.typ"
#pagebreak(weak: true)
#include "realmin.typ"
]
