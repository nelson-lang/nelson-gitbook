#import "nelson_help.typ": *

= whomat <matio:whomat>

List variables in an valid .mat file.

== Syntax

- #raw("whomat(filename)");
- #raw("ce = whomat(filename)");
- #raw("whomat(filename, var1, ..., varN)");
- #raw("ce = whomat(filename, var1, ..., varN)");

== Input argument

/ filename: a string: .mat filename.
/ var1, ..., varN: string: Names of variables to inspect.

== Output argument

/ ce: cell of strings with variables names.

== Description

#strong[whomat]; lists variables in an valid .mat file.


== Bibliography

Thanks to MATIO library (http:\/\/sourceforge.net\/projects\/matio\/).

== Example

``````matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savemat([tempdir(), 'example_whomat-v7.3.mat'], 'A', 'B', 'C', 'D', '-v7.3')
whomat([tempdir(), 'example_whomat-v7.3.mat'])
ce = whomat([tempdir(), 'example_whomat-v7.3.mat'])
``````


== See also

#nlink(<hdf5:whonh5>)[whonh5];, #nlink(<memory_manager:who>)[who];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
