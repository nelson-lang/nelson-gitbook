#import "../nelson_help.typ": *

= nyquist <control_system:3_linear_analysis.nyquist>

Nyquist plot of frequency response.

== Syntax

- #raw("nyquist(sys)");
- #raw("nyquist(sys, w)");
- #raw("[re, im, wout] = nyquist(sys)");
- #raw("[re, im, wout] = nyquist(sys, w)");

== Input argument

/ sys: Dynamic system
/ w: Frequencies: vector or {wmin,wmax}

== Output argument

/ re: Real part of system response
/ im: Imaginary part of system response
/ wout: Frequencies

== Description

The Nyquist function,#strong[nyquist(sys)];, generates a graphical representation known as a Nyquist plot, illustrating the frequency response of a dynamic system model represented by sys.

 This plot visualizes both the real and imaginary components of the system's response across varying frequencies.

 The contour depicted by nyquist encompasses both positive and negative frequencies.

 Additionally, the plot incorporates arrows that signify the direction of increasing frequency for each branch.


== Examples

``````matlab
f = figure();
sys = tf([1, 1, 3, 3], [1, -3, 3, -1])
nyquist(sys);

``````


#align(center)[#image("nyquist_1.svg")]
``````matlab
H = tf([2 5 1], [1 2 3]);
[re, im, wout] = nyquist(H);

``````

``````matlab
f = figure();
      H = tf([2 5 1], [1 2 3]);
nyquist(H);

``````


#align(center)[#image("nyquist_2.svg")]

== See also

#nlink(<control_system:3_linear_analysis.bode>)[bode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
