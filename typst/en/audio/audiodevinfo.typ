#import "nelson_help.typ": *

= audiodevinfo <audio:audiodevinfo>

Get audio devices information.

== Syntax

- #raw("devices = audiodevinfo()");
- #raw("devices = audiodevinfo('default')");
- #raw("devices = audiodevinfo(io)");
- #raw("name = audiodevinfo(io, id)");
- #raw("id = audiodevinfo(io, name)");
- #raw("id = audiodevinfo(io, rate, bits, channels)");
- #raw("support = audiodevinfo(io, id, rate, bits, channels)");

== Input argument

/ io: input (1) or output (0) device
/ id: an integer value.
/ name: a string: name of the audio device to search.
/ rate: a double scalar: sample rate.
/ bits: an integer value: bits per sample.
/ channels: an integer value: number of audio channel.

== Output argument

/ devices: struct array
/ name: a string: name of the audio device specified by io and id.
/ id: an integer value.
/ support: a logical: true if values supported or false.

== Description

#strong[audiodevinfo]; returns a structure with available audio input and output devices.

 #strong[devices \= audiodevinfo('default')]; returns a structure with default used audio input and output devices.


== Example

``````matlab
info = audiodevinfo()
OUTPUT_DEVICE = 0;
INPUT_DEVICE = 1;
for k = [1:audiodevinfo(OUTPUT_DEVICE)]
  info.output(k)
end
for k = [1:audiodevinfo(INPUT_DEVICE)]
  info.output(k)
end
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
