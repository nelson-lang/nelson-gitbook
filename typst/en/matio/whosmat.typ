#import "nelson_help.typ": *

= whosmat <matio:whosmat>

List variables in an valid .mat file with sizes and types.

== Syntax

- #raw("whosmat(filename)");
- #raw("st = whosmat(filename)");
- #raw("whosmat(filename, var1, ..., varN)");
- #raw("st = whosmat(filename, var1, ..., varN)");

== Input argument

/ filename: a string: .mat filename.
/ var1, ..., varN: string: Names of variables to inspect.

== Output argument

/ st: stores information about the variables in the structure array st.

== Description

#strong[whosmat]; lists variables in an valid .mat file.


== Bibliography

Thanks to MATIO library (http:\/\/sourceforge.net\/projects\/matio\/).

== Example

``````matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savemat([tempdir(), 'example_whosmat-v7.3.mat'], 'A', 'B', 'C', 'D', '-v7.3')
whosmat([tempdir(), 'example_whosmat-v7.3.mat'])
st = whosmat([tempdir(), 'example_whosmat-v7.3.mat'])
``````


== See also

#nlink(<hdf5:whosnh5>)[whosnh5];, #nlink(<memory_manager:whos>)[whos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
