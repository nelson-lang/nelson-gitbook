#import "../nelson_help.typ": *

= rayllike <statistics:2_probability_distributions.rayllike>

Rayleigh negative log-likelihood

== Syntax

- #raw("nlogL = rayllike(b, x)");
- #raw("[nlogL, avar] = rayllike(b, x, censoring, freq)");

== Input argument

/ b: positive scalar: scale parameter.
/ x: nonnegative finite real nonempty array: sample data.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: scalar: approximate variance.

== Description

#strong[rayllike]; evaluates the negative log-likelihood of the Rayleigh distribution.


== Example

``````matlab
x = [0.5 1 2 3 5 8];
b = raylfit(x);
nlogL = rayllike(b, x);
``````


== See also

#nlink(<statistics:2_probability_distributions.raylfit>)[raylfit];, #nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylcdf>)[raylcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
