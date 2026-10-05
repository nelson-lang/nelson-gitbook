#import "nelson_help.typ": *

= namedargs2cell <data_structures:namedargs2cell>

Converts a struct containing name-value pairs to a cell.

== Syntax

- #raw("ce = namedargs2cell(st)");

== Input argument

/ st: a scalar structure.

== Output argument

/ ce: a cell.

== Description

#strong[ce \= namedargs2cell(st)]; returns an cell containing name-value pairs.


== Example

``````matlab
S = struct();
S.CharacterEncoding = 'auto';
S.Timeout = 5;
S.Username = "";
S.logical = false;
R = namedargs2cell(S)
``````


== See also

#nlink(<data_structures:struct2cell>)[struct2cell];, #nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:fieldnames>)[fieldnames];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
