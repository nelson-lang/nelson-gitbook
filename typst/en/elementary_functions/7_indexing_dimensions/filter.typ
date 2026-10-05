#import "../nelson_help.typ": *

= filter <elementary_functions:7_indexing_dimensions.filter>

1-D digital filter

== Syntax

- #raw("y = filter(b, a, x)");
- #raw("y = filter(b, a, x, zi)");
- #raw("y = filter(b, a, x, zi, dim)");
- #raw("[y, zf] = filter(...)");

== Input argument

/ b: Numerator coefficients of rational transfer function: vector.
/ a: Denominator coefficients of rational transfer function: vector.
/ x: Input data: matrix.
/ zi: Initial filter conditions.
/ dim: Dimension to operate along.

== Output argument

/ y: Filtered data: matrix.
/ zf: Final filter conditions.

== Description

The function#strong[filter(b, a, x)]; applies a rational transfer function to filter the input data array#strong[x];.

 This transfer function is defined by the coefficients of the numerator (#strong[b];) and denominator (#strong[a];).

 If the first coefficient of #strong[a]; (a(1)) is not equal to 1, the filter normalizes the coefficients by a(1). It is crucial for a(1) to be nonzero.

 When#strong[x]; is a vector, the function returns a vector of the same size as#strong[x]; containing the filtered data.

 Sparse inputs are not supported.

 Initial and final filter conditions have the filter order as their first dimension, followed by the dimensions of #strong[x]; except the filtered dimension.


== Example

``````matlab
f = figure();
rng default
t = linspace(-pi,pi,100);
X = sin(t) + (0.33 * rand(size(t)));
windowSize = 7;
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b, a, X);
plot(t, X)
hold on
plot(t, y)
legend(_('Input Data'), _('Filtered Data'));

``````


== See also

#nlink(<data_analysis:conv>)[conv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [documented initial and final filter conditions, dimension support, and sparse input validation],
)

// Author: Allan CORNET
