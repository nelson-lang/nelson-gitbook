#import "nelson_help.typ": *

= sound <audio:sound>

Convert matrix of signal data to sound and play it.

== Syntax

- #raw("sound(y)");
- #raw("sound(y, Fs)");
- #raw("sound(y, Fs, nBits)");
- #raw("sound(y, Fs, nBits)");

== Input argument

/ y: column vector or m-by-2 matrix.
/ Fs: sample rate, a positive number, 8192 by default.
/ nBits: bit depth of sample values: 8, 16 (default), 24.

== Description

#strong[sound]; plays audio signal #strong[y]; to the speaker at sample rate of #strong[Fs]; hertz and uses #strong[nBits]; bits per sample.


== Example

``````matlab
signal = rand(2, 44100) - 0.5;
sound(signal, 44110, 16)

``````


== See also

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:playblocking>)[playblocking];, #nlink(<audio:soundsc>)[soundsc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
