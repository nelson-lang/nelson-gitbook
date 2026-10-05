#import "../nelson_help.typ": *

= filtfilt <signal_processing:4_digital_filters.filtfilt>

Forward and reverse digital filtering.

== Syntax

- #raw("Y = filtfilt(B, A, X)");

== Input argument

/ B, A: filter coefficients.
/ X: input signal.

== Output argument

/ Y: filtered signal.

== Description

#strong[filtfilt]; filters forward, reverses the result, filters again, and reverses back.


== Example

``````matlab

y = filtfilt([1 1] / 2, 1, [1 2 3 4]);

``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
