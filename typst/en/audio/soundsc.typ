#import "nelson_help.typ": *

= soundsc <audio:soundsc>

Scale data and play as sound.

== Syntax

- #raw("soundsc(y)");
- #raw("soundsc(y, Fs)");
- #raw("soundsc(y, Fs, nBits)");
- #raw("soundsc(y, Fs, nBits, yRange)");

== Input argument

/ y: column vector or m-by-2 matrix.
/ Fs: sample rate, a positive number, 8192 by default.
/ nBits: bit depth of sample values: 8, 16 (default), 24.
/ yRange: range of audio data to scale: two-element vector or \[-max(abs(y)),max(abs(y))\] default.

== Description

#strong[soundsc]; scales the values of audio signal #strong[y]; to fit in the range from #strong[–1.0]; to #strong[1.0]; and play as sound.


== Example

``````matlab
signal = rand(2, 44100) - 0.5;
soundsc(signal, 44110, 16)

``````


== See also

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:playblocking>)[playblocking];, #nlink(<audio:sound>)[sound];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
