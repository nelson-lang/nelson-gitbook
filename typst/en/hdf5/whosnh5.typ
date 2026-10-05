#import "nelson_help.typ": *

= whosnh5 <hdf5:whosnh5>

List variables in an valid .nh5 file with sizes and types.

== Syntax

- #raw("whosnh5(filename)");
- #raw("st = whosnh5(filename)");
- #raw("whosnh5(filename, var1, ..., varN)");
- #raw("st = whosnh5(filename, var1, ..., varN)");

== Input argument

/ filename: a string: .nh5 filename.
/ var1, ..., varN: string: Names of variables to inspect.

== Output argument

/ st: stores information about the variables in the structure array st.

== Description

#strong[whosnh5]; lists variables in an valid .nh5 file.


== Example

``````matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savenh5([tempdir(), 'example_whosnh5.nh5'], 'A', 'B', 'C', 'D')
whosnh5([tempdir(), 'example_whosnh5.nh5'])
st = whosnh5([tempdir(), 'example_whosnh5.nh5'])
``````


== See also

#nlink(<matio:whosmat>)[whosmat];, #nlink(<memory_manager:whos>)[whos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
