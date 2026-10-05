#import "../nelson_help.typ": *

= nthroot <elementary_functions:2_elementary_math.nthroot>

The real 𝑛th root of real number.

== Syntax

- #raw("Y = nthroot(X, N)");

== Input argument

/ X: Input array: scalar, vector, matrix or multidimensional array.
/ N: Roots to calculate: scalar or array of same size as X.

== Output argument

/ Y: result of 'nthroot'.

== Description

#strong[𝑌 \= nthroot(𝑋, 𝑁)]; returns the real 𝑛th root of the elements of #strong[𝑋];.

 Both #strong[𝑋]; and#strong[𝑁]; must be real scalars or arrays of the same size. If an element in#strong[𝑋]; is negative, the corresponding element in#strong[𝑁]; must be an odd integer.

 When computing roots where both real and complex roots exist, the #strong[power]; function efficiently computes only the complex roots.

 To obtain the real root in such cases, use the nthroot function instead.


== Example

``````matlab
X = [-2 -3 -2; 4 -2 -5]
N = [1 -1 3; 1/2 5 3]
Y = nthroot(X, N)
``````


== See also

#nlink(<operators:power>)[power];, #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.6.0], [initial version],
)

// Author: Allan CORNET
