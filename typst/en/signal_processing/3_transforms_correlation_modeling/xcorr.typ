#import "../nelson_help.typ": *

= xcorr <signal_processing:3_transforms_correlation_modeling.xcorr>

Cross-correlation of discrete-time signals.

== Syntax

- #raw("C = xcorr(X)");
- #raw("C = xcorr(X, Y)");
- #raw("[C, Lags] = xcorr(..., maxlag)");
- #raw("[C, Lags] = xcorr(..., scaleopt)");

== Input argument

/ X: input signal.
/ Y: optional second input signal.
/ maxlag: maximum lag to return.
/ scaleopt: scaling option: 'none', 'biased', 'unbiased', 'coeff', or 'normalized'.

== Output argument

/ C: correlation sequence.
/ Lags: lag vector.

== Description

#strong[xcorr]; computes auto-correlation or cross-correlation for one-dimensional signals.


== Example

``````matlab

[c, lags] = xcorr([1 2 3], 1, 'biased');

``````


== See also

#nlink(<signal_processing:3_transforms_correlation_modeling.xcov>)[xcov];, #nlink(<signal_processing:3_transforms_correlation_modeling.xcorr2>)[xcorr2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
