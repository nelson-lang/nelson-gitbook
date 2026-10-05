#import "nelson_help.typ": *

= whonh5 <hdf5:whonh5>

List variables in an valid .nh5 file.

== Syntax

- #raw("whonh5(filename)");
- #raw("ce = whonh5(filename)");
- #raw("whonh5(filename, var1, ..., varN)");
- #raw("ce = whonh5(filename, var1, ..., varN)");

== Input argument

/ filename: a string: .nh5 filename.
/ var1, ..., varN: string: Names of variables to inspect.

== Output argument

/ ce: cell of strings with variables names.

== Description

#strong[whonh5]; lists variables in an valid .nh5 file.


== Example

``````matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savenh5([tempdir(), 'example_whonh5.nh5'], 'A', 'B', 'C', 'D')
whonh5([tempdir(), 'example_whonh5.nh5'])
ce = whonh5([tempdir(), 'example_whonh5.nh5'])
``````


== See also

#nlink(<matio:whomat>)[whomat];, #nlink(<memory_manager:who>)[who];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
