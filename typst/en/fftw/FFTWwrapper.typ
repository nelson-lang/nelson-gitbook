#import "nelson_help.typ": *

= FFTWwrapper <fftw:FFTWwrapper>

load\/free FFTW library dynamically.

== Syntax

- #raw("r = FFTWwrapper('load')");
- #raw("r = FFTWwrapper('load', fftwlibraryname, fftwflibraryname)");
- #raw("r = FFTWwrapper('free')");

== Input argument

/ 'load': load FFTW library.
/ 'free': free FFTW library.
/ fftwlibraryname: a string: fftw library name.
/ fftwflibraryname: a string: fftw float library name.

== Output argument

/ r: a logical.

== Description

#strong[FFTWwrapper]; is an internal builtin used to load FFTW library dynamically.


== See also

#nlink(<fftw:fft>)[fft];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
