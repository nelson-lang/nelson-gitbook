#import "nelson_help.typ": *

= celldisp <data_structures:celldisp>

Display cell array contents.

== Syntax

- #raw("celldisp(C)");
- #raw("celldisp(C, name)");

== Input argument

/ C: cell array.
/ name: displayed name of cell array.

== Description

#strong[celldisp]; recursively display the contents of a cell array.


== Example

``````matlab
C = {2, 22, 'ff', {331, 332}};
celldisp(C)
celldisp(C, 'var_name')
``````


== See also

#nlink(<display_format:disp>)[disp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
