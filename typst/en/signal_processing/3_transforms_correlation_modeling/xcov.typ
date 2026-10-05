#import "../nelson_help.typ": *

= xcov <signal_processing:3_transforms_correlation_modeling.xcov>

Cross-covariance of discrete-time signals.

== Syntax

- #raw("C = xcov(X)");
- #raw("C = xcov(X, Y)");
- #raw("[C, Lags] = xcov(..., maxlag)");
- #raw("[C, Lags] = xcov(..., scaleopt)");

== Input argument

/ X: input signal.
/ Y: optional second input signal.
/ maxlag: maximum lag to return.
/ scaleopt: scaling option passed to xcorr after mean removal.

== Output argument

/ C: covariance sequence.
/ Lags: lag vector.

== Description

#strong[xcov]; subtracts the mean from each signal and computes the corresponding correlation sequence.


== Example

``````matlab

[c, lags] = xcov([1 2 3], 1, 'biased');

``````


== See also

#nlink(<signal_processing:3_transforms_correlation_modeling.xcorr>)[xcorr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
