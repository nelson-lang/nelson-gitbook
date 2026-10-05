#import "nelson_help.typ": *

= fminbnd <optimization:fminbnd>

Bounded scalar minimization.

== Syntax

- #raw("x = fminbnd(fun, x1, x2)");
- #raw("[x, fval, exitflag, output] = fminbnd(fun, x1, x2, options)");
- #raw("x = fminbnd(problem)");

== Input argument

/ fun: scalar objective function.
/ x1, x2: finite interval endpoints.
/ options: solver options.

== Output argument

/ x: estimated minimizer in the interval.
/ fval: objective value.
/ exitflag: termination indicator.
/ output: diagnostics.

== Description

#strong[fminbnd]; applies Brent's bounded minimization method, combining golden-section steps with parabolic interpolation. A problem structure can contain objective, x1, x2 and options fields.


== Used function(s)

optimset

== Bibliography

R. P. Brent, Algorithms for Minimization Without Derivatives, Prentice-Hall, 1973.

== Example

``````matlab
[x, fval] = fminbnd(@(x) (x - 1.5)^2, -2, 4)

``````


== See also

#nlink(<optimization:fminsearch>)[fminsearch];, #nlink(<optimization:fzero>)[fzero];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
