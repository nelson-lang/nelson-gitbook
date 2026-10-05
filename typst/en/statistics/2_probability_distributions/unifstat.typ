#import "../nelson_help.typ": *

= unifstat <statistics:2_probability_distributions.unifstat>

Continuous uniform mean and variance

== Syntax

- #raw("[m, v] = unifstat(a, b)");

== Input argument

/ a: real scalar or array: lower endpoint.
/ b: real scalar or array: upper endpoint.

== Output argument

/ m: array: means.
/ v: array: variances.

== Description

#strong[unifstat]; returns the element-wise mean and variance of continuous uniform distributions.

 Scalar endpoints are expanded to match array endpoints. Invalid intervals produce NaN values.


== Example

``````matlab
[m, v] = unifstat(0, 1);
a = 1:6;
b = 2 * a;
[m2, v2] = unifstat(a, b);
``````


== See also

#nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf];, #nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf];, #nlink(<statistics:2_probability_distributions.unifinv>)[unifinv];, #nlink(<statistics:2_probability_distributions.unifrnd>)[unifrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
