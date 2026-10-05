#import "../nelson_help.typ": *

= hampel <signal_processing:1_signal_generation_preprocessing.hampel>

Hampel outlier filtering.

== Syntax

- #raw("Y = hampel(X)");
- #raw("Y = hampel(X, K)");
- #raw("[Y, I] = hampel(X, K, NSIGMA)");
- #raw("[Y, I, XMEDIAN, XSIGMA] = hampel(...)");

== Input argument

/ X: input signal.
/ K: number of neighbors on each side.
/ NSIGMA: outlier threshold in robust standard deviations.

== Output argument

/ Y: filtered signal.
/ I: logical outlier index.
/ XMEDIAN: local median values.
/ XSIGMA: local robust standard deviation estimates.

== Description

#strong[hampel]; replaces outliers by the local median.


== Example

``````matlab

[y, i] = hampel([1 1 10 1 1], 1, 2);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.medfilt1>)[medfilt1];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
