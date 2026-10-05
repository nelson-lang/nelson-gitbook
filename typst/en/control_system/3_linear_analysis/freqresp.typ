#import "../nelson_help.typ": *

= freqresp <control_system:3_linear_analysis.freqresp>

Evaluate system response over a grid of frequencies.

== Syntax

- #raw("[H, wout] = freqresp(sys, w)");
- #raw("H = freqresp(sys, w)");

== Input argument

/ sys: LTI model
/ w: Frequencies: vector

== Output argument

/ H: Frequency response values
/ wout: Output frequencies corresponding to the frequency response: vector.

== Description

#strong[freqresp]; computes the frequency response of a dynamic system #strong[sys]; at specified frequencies #strong[w];.

 Use the #strong[bode]; function to obtain magnitude and phase data and to plot the frequency response.


== Examples

``````matlab
G = tf(1,[1 1]);
h1 = freqresp(G, 3)
``````

``````matlab
num = [1 2];
den = [1 3 2];
sys = tf(num,den);
w = linspace(0, 100, 60);
[resp,freq] = freqresp(sys, w);

f = figure();
subplot(2, 1, 1);
plot(freq, 20 * log10(abs(squeeze(resp))));
ylabel(_('Amplitude (dB)'));
subplot(2, 1, 2);
plot(freq, angle(squeeze(resp)) * 180/pi);
ylabel(_('Phase (degrees)'));
xlabel(_('Frequency (Hz)'));

``````


#align(center)[#image("freqresp.svg")]

== See also

#nlink(<control_system:3_linear_analysis.bode>)[bode];, #nlink(<control_system:3_linear_analysis.evalfr>)[evalfr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
