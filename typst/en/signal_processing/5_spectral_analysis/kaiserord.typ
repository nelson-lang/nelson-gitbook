#import "../nelson_help.typ": *

= kaiserord <signal_processing:5_spectral_analysis.kaiserord>

Kaiser window FIR design parameters.

== Syntax

- #raw("[N, Wn, beta, ftype] = kaiserord(F, A, DEV)");
- #raw("[N, Wn, beta, ftype] = kaiserord(F, A, DEV, Fs)");

== Input argument

/ F: band edge frequencies.
/ A: desired band amplitudes.
/ DEV: allowed deviations.
/ Fs: sample rate.

== Output argument

/ N: estimated filter order.
/ Wn: cutoff frequency.
/ beta: Kaiser beta parameter.
/ ftype: filter type string.

== Description

#strong[kaiserord]; estimates FIR design parameters for use with #strong[fir1]; and #strong[kaiser];.


== Example

``````matlab

[n, wn, beta, ftype] = kaiserord([0.2 0.3], [1 0], [0.01 0.001]);

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.kaiser>)[kaiser];, #nlink(<signal_processing:4_digital_filters.fir1>)[fir1];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
