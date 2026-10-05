#import "nelson_help.typ": *

= audiorecorder\_fieldnames <audio:audiorecorder_fieldnames>

Returns the properties name of an audiorecorder object.

== Syntax

- #raw("l = audiorecorder_fieldnames(h)");
- #raw("l = fieldnames(h)");

== Input argument

/ h: a audiorecorder object.

== Output argument

/ l: a cell of strings.

== Description

#strong[fieldnames]; returns a cell of strings with properties name.
== Example

``````matlab
recObj = audiorecorder()
fieldnames(recObj)
delete(recObj)
clear recObj
``````


== See also

#nlink(<audio:audiorecorder_set>)[audiorecorder\_set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
