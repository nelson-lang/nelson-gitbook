#import "nelson_help.typ": *

= audioread <audio:audioread>

Read an audio file.

== Syntax

- #raw("y = audioread(filename)");
- #raw("[y, fs] = audioread(filename)");
- #raw("[y, fs] = audioread(filename, range)");
- #raw("[y, fs] = audioread(filename, type)");
- #raw("[y, fs] = audioread(filename, range, type)");

== Input argument

/ filename: a string: an existing filename.
/ range: a vector: \[start end\].
/ type: a string: 'double' or 'native'.

== Output argument

/ y: a matrix: audio data.
/ fs: an integer value: sampling rate.

== Description

#strong[audioread]; reads an audio file.

 Supported format: 'wav', 'ogg', 'flac', 'mp3', 'caf', 'au', 'aiff'. See #strong[audiosupportedformats]; function to have all supported formats.

 If #strong[type]; is 'native' then audio data depends on the file format (single, double, integers).


== Example

``````matlab
wav_audio = [modulepath('audio'), '/examples/haha.wav'];
[y, fs] = audioread(wav_audio);
playObj = audioplayer(y, fs);
playblocking(playObj)
delete(playObj)
clear playObj
``````


== See also

#nlink(<audio:playblocking>)[playblocking];, #nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:audiosupportedformats>)[audiosupportedformats];, #nlink(<audio:audiowrite>)[audiowrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
