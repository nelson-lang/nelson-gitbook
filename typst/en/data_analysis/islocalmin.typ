#import "nelson_help.typ": *

= islocalmin <data_analysis:islocalmin>

Detect local minima in data.

== Syntax

- #raw("TF = islocalmin(A)");
- #raw("TF = islocalmin(A, dim)");
- #raw("TF = islocalmin(..., Name, Value)");
- #raw("[TF, P] = islocalmin(...)");

== Input argument

/ A: input data: real numeric or logical vector, matrix, N-D array, table or timetable.
/ dim: dimension to operate along: positive integer scalar (default: first non-singleton dimension). Not supported for tables.
/ 'MinProminence': nonnegative scalar (default: 0): only the minima whose prominence is at least this value are returned.
/ 'FlatSelection': element marked in a flat minimum region: 'center' (default), 'first', 'last' or 'all'.
/ 'MinSeparation': nonnegative scalar (default: 0), in sample point units (a duration for datetime or duration sample points): a minimum closer than this value to a more prominent one is ignored.
/ 'MaxNumExtrema': positive integer: keep at most this number of the most prominent minima (default: no limit).
/ 'ProminenceWindow': positive scalar k or two-element vector \[b f\] of nonnegative values (a duration for datetime or duration sample points): the prominence of a minimum is computed with the data of the window \[x-k\/2, x+k\/2) or \[x-b, x+f\] only.
/ 'SamplePoints': sorted vector of unique double, single, datetime or duration values: locations of the data (default: 1, 2, 3, ...). For a table, it can also be a table variable name. A timetable uses its row times.
/ 'DataVariables': table variables to operate on: names, indices, logical vector, function handle or vartype (default: all variables).
/ 'OutputFormat': 'logical' (default): TF is a logical array; 'tabular': TF is a table with the DataVariables. Only for tables.

== Output argument

/ TF: logical array of the size of A (or table), true at the local minima.
/ P: prominence of each local minimum (0 elsewhere), same size as A; unsigned integer class for integer data. For a table, P is a table with the DataVariables.

== Description

#strong[islocalmin]; marks the elements of A that are smaller than their neighbors along the operating dimension. A run of equal values smaller than the values around it is one local minimum (see 'FlatSelection').

 The first and last elements are never local minima. NaN values are ignored. -Inf values are always local minima, with an infinite prominence.

 The prominence of a minimum measures how much it stands out: from the minimum, a horizontal line is drawn on each side up to the first strictly lower value or the end of the data; the basis is the lower of the two highest values found above these lines, and the prominence is the depth of the minimum below the basis. Every element of a flat minimum region carries its prominence.

 islocalmin(A) gives the same result as islocalmax applied to the reversed data: the options behave the same way. The filters are applied in this order: 'MinProminence', 'MinSeparation' (a flat region counts as one minimum spanning its samples) and 'MaxNumExtrema' (on ties, the first minimum wins).

 Without 'ProminenceWindow', the search runs in linear time: it is suitable for large signals.


== Examples

Local minima and their prominence

``````matlab
A = [5 0 4 2 4 1 5];
[TF, P] = islocalmin(A)
islocalmin(A, 'MinProminence', 3)
``````

Flat minima regions

``````matlab
x = 0:0.1:5;
A = max(-0.75, -sin(pi * x));
find(islocalmin(A, 'FlatSelection', 'first'))
find(islocalmin(A, 'FlatSelection', 'all'))
``````

Most prominent minimum of each column

``````matlab
A = [3 4; 1 2; 2 4; 0 1; 3 4];
TF = islocalmin(A, 'MaxNumExtrema', 1)
``````


== See also

#nlink(<data_analysis:islocalmax>)[islocalmax];, #nlink(<data_analysis:min>)[min];, #nlink(<data_analysis:movmin>)[movmin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
