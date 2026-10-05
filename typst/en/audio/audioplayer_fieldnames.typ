#import "nelson_help.typ": *

= audioplayer\_fieldnames <audio:audioplayer_fieldnames>

Returns the properties name of an audioplayer object.

== Syntax

- #raw("l = audioplayer_fieldnames(h)");
- #raw("l = fieldnames(h)");

== Input argument

/ h: a audioplayer object.

== Output argument

/ l: a cell of strings.

== Description

#strong[fieldnames]; returns a cell of strings with properties name.
== Example

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
fieldnames(playObj)
delete(playObj)
clear playObj
``````


== See also

#nlink(<audio:audioplayer_set>)[audioplayer\_set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
