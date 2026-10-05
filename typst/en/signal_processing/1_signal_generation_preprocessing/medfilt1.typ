#import "../nelson_help.typ": *

= medfilt1 <signal_processing:1_signal_generation_preprocessing.medfilt1>

One-dimensional median filter.

== Syntax

- #raw("Y = medfilt1(X)");
- #raw("Y = medfilt1(X, N)");
- #raw("Y = medfilt1(X, N, [], DIM)");
- #raw("Y = medfilt1(..., NANFLAG, PADDING)");

== Input argument

/ X: input signal.
/ N: window length.
/ DIM: dimension to filter along.
/ NANFLAG: "includenan" or "omitnan".
/ PADDING: "zeropad" or "truncate".

== Output argument

/ Y: median filtered signal.

== Description

#strong[medfilt1]; replaces each sample by a median over a local window.


== Example

``````matlab

y = medfilt1([1 9 2 3 4], 3);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.hampel>)[hampel];, #nlink(<signal_processing:1_signal_generation_preprocessing.sgolayfilt>)[sgolayfilt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
