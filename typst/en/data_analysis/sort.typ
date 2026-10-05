#import "nelson_help.typ": *

= sort <data_analysis:sort>

Sort array elements by quick sort algorithm.

== Syntax

- #raw("B = sort(A)");
- #raw("B = sort(A, dim)");
- #raw("B = sort(..., direction)");
- #raw("B = sort(..., name, value)");
- #raw("B = sort(A, dim, direction, name, value)");
- #raw("[B, I] = sort(...)");

== Input argument

/ A: an nelson's variable (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
/ dim: Dimension to operate along: positive integer scalar.
/ direction: Sorting direction: 'ascend' (default) or 'descend'.
/ name, value: name-value pair arguments.

== Output argument

/ B: sorted array.
/ I: sort index.

== Description

#strong[sort]; implements quick sort algorithm.

 With two outputs, elements with equivalent sort keys retain their original order. The indices returned for equivalent values are increasing within each group, in either sorting direction.

 Name-value pairs can be used after the dimension and sorting direction.

 name-value pair arguments:

 #strong['MissingPlacement']; - Placement of missing values: #strong['auto']; (default), #strong['first'];, #strong['last'];.

 #strong['ComparisonMethod']; - Element comparison method: #strong['auto']; (default), #strong['real'];, #strong['abs'];.

 With 'MissingPlacement' set to 'last', nonmissing values are sorted in the requested direction and missing values follow them. This applies with one or two outputs. A missing string is distinct from an empty string.

 Complex values with a NaN in either component are missing. They retain their input order with one or two outputs, including the non-NaN component, for every missing placement and sorting direction.


== Used function(s)

qsort (stl)

== Bibliography

Quick sort algorithm from Bentley and McIlroy's "Engineering a Sort Function". Software - Practice and Experience

== Examples

ComparisonMethod

``````matlab
A = [10+20i 30+i 10i 0 -10i];
B = sort(A,'ComparisonMethod', 'auto')
B = sort(A, 'ComparisonMethod', 'real')
B = sort(A, 'ComparisonMethod', 'abs')

``````

MissingPlacement

``````matlab
A = [NaN 3 6 0 NaN];
[B, I] = sort(A, 'MissingPlacement', 'auto')
[B, I] = sort(A, 'MissingPlacement', 'first')
[B, I] = sort(A, 'MissingPlacement', 'last')

``````


== See also

#nlink(<data_analysis:issorted>)[issorted];, #nlink(<data_analysis:unique>)[unique];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
