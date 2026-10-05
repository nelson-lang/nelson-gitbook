#import "../nelson_help.typ": *

= unifit <statistics:2_probability_distributions.unifit>

Continuous uniform parameter estimates

== Syntax

- #raw("[aHat, bHat] = unifit(x)");
- #raw("[aHat, bHat, aCI, bCI] = unifit(x)");
- #raw("[aHat, bHat, aCI, bCI] = unifit(x, alpha)");

== Input argument

/ x: real vector or matrix: sample data.
/ alpha: scalar in \[0, 1\]: significance level. The default is 0.05.

== Output argument

/ aHat: row vector: lower endpoint estimates.
/ bHat: row vector: upper endpoint estimates.
/ aCI: 2-by-n array: confidence intervals for lower endpoints.
/ bCI: 2-by-n array: confidence intervals for upper endpoints.

== Description

#strong[unifit]; returns maximum likelihood estimates for continuous uniform endpoint parameters.

 Vector inputs are treated as one sample. Matrix inputs are processed column by column.


== Example

``````matlab
x = [2 5 3 4];
[aHat, bHat, aCI, bCI] = unifit(x);
[aHat2, bHat2] = unifit([1 2; 3 4; 4 9]);
``````


== See also

#nlink(<statistics:2_probability_distributions.uniflike>)[uniflike];, #nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf];, #nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf];, #nlink(<statistics:2_probability_distributions.unifinv>)[unifinv];, #nlink(<statistics:2_probability_distributions.unifstat>)[unifstat];, #nlink(<statistics:2_probability_distributions.unifrnd>)[unifrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
