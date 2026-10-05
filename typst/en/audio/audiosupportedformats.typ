#import "nelson_help.typ": *

= audiosupportedformats <audio:audiosupportedformats>

Get audio file supported formats.

== Syntax

- #raw("formats = audiosupportedformats()");

== Output argument

/ formats: struct array with 'Name', 'Extension', 'Subformats' fieldnames.

== Description

#strong[audiosupportedformats]; returns a structure with supported audio file formats.


== Example

``````matlab
formats = audiosupportedformats();
for k = [1: length(formats)]
  formats(k).Name
  formats(k).Extension
  formats(k).Subformats
end
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
