#import "nelson_help.typ": *

= audioinfo <audio:audioinfo>

Get audio file information.

== Syntax

- #raw("info = audioinfo(filename)");

== Input argument

/ filename: a string: an valid audio filename.

== Output argument

/ info: a struct: information about audio file.

== Description

#strong[audioinfo]; returns a structure with information about audio file.

 Many audio formats are supported as OGG, FLAC, WAV, RAW.


== Example

``````matlab

wav_file = [modulepath('audio'), '/examples/haha.wav'];
info = audioinfo(wav_file)

``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
