#import "nelson_help.typ": *

= polyfit <polynomial_functions:polyfit>

Polynomial curve fitting.

== Syntax

- #raw("p = polyfit(x, y, n)");

== Input argument

/ x: vector: query points
/ y: vector: fitted values at query points
/ n: positive scalar: degree of polynomial fit

== Output argument

/ p: vector: Least-squares fit polynomial coefficients

== Description

#strong[p \= polyfit(x, y, n)]; returns the coefficients for a polynomial#strong[p(x)]; of degree #strong[n]; that is a best fit for the data in#strong[y];.


== Example

``````matlab

x = linspace(0, 8 * pi, 15);
y = sin(x);
p = polyfit(x, y, 7)
``````


== See also

#nlink(<polynomial_functions:roots>)[roots];, #nlink(<polynomial_functions:poly>)[poly];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
