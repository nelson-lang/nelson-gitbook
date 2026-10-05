#import "../nelson_help.typ": *

= blackmanharris <signal_processing:5_spectral_analysis.blackmanharris>

Blackman-Harris window.

== Syntax

- #raw("W = blackmanharris(M)");
- #raw("W = blackmanharris(M, option)");

== Input argument

/ M: window length.
/ option: 'symmetric' or 'periodic'.

== Output argument

/ W: column vector containing the window.

== Description

#strong[blackmanharris]; returns a minimum four-term Blackman-Harris window.


== Example

``````matlab

w = blackmanharris(5);

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.blackman>)[blackman];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
