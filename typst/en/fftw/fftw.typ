#import "nelson_help.typ": *

= fftw <fftw:fftw>

function for determining FFT algorithm.

== Syntax

- #raw("m = fftw('planner')");
- #raw("fftw('planner', m)");
- #raw("w = fftw('dwisdom')");
- #raw("fftw('dwisdom', w)");
- #raw("w = fftw('swisdom')");
- #raw("fftw('swisdom', w)");

== Input argument

/ m: method for setting transform parameters: 'estimate', 'measure', 'patient', 'exhaustive', or 'hybrid'.
/ w: a string: wisdom data.

== Output argument

/ m: method: 'estimate', 'measure', 'patient', 'exhaustive', or 'hybrid'.
/ w: a string: wisdom data.

== Description

The default method is 'estimate'.


== Example

``````matlab
w = fftw('dwisdom')
M = rand(1000);
tic; fft(M); toc
fftw('dwisdom', w)
tic; fft(M); toc
``````


== See also

#nlink(<fftw:fft>)[fft];, #nlink(<fftw:ifft>)[ifft];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
