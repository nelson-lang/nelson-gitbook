#import "nelson_help.typ": *

= struct2array <data_structures:struct2array>

Concatenate structure field values into an array.

== Syntax

- #raw("a = struct2array(s)");

== Input argument

/ s: a structure whose field values can be concatenated.

== Output argument

/ a: the horizontal concatenation of the field values.

== Description

#strong[a \= struct2array(s)]; returns the horizontal concatenation of the field values of #strong[s];. The field values must have compatible sizes and types.


== Example

``````matlab
s.a = 1;
s.b = [2 3];
struct2array(s)
``````


== See also

#nlink(<data_structures:struct2cell>)[struct2cell];, #nlink(<data_structures:cell2mat>)[cell2mat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
