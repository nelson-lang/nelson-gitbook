#import "nelson_help.typ": *

= audiometadata <audio:audiometadata>

Get\/Set metadata of audio file .

== Syntax

- #raw("info = audiometadata(filename)");
- #raw("info_previous = audiometadata(filename, info_new)");

== Input argument

/ filename: a string: an valid audio filename.
/ info\_new: a struct: new information about audio file to set.

== Output argument

/ info: a struct: information about audio file.
/ info\_previous: a struct: previous information about audio file.

== Description

#strong[audiometadata]; returns a structure with metadata of an audio file.

 #strong[audiometadata]; manages all tags available in the audio file.

 Many audio formats are supported as OGG, FLAC, WAV, RAW.


== Examples

``````matlab
wav_file = [modulepath('audio'), '/examples/haha.wav'];
info = audiometadata(wav_file)
``````

``````matlab
wav_file = [modulepath('audio'), '/examples/haha.wav'];
modified_wav_file = [tempdir(), 'haha_modified_tags.wav'];
if isfile(modified_wav_file)
  rmfile(modified_wav_file);
end
copyfile(wav_file, modified_wav_file);
info = audiometadata(modified_wav_file)
info.artist = 'Nelson';
audiometadata(modified_wav_file, info);
info = audiometadata(modified_wav_file)
if isfile(modified_wav_file)
  rmfile(modified_wav_file);
end
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
