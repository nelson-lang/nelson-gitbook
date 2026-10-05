#import "../nelson_help.typ": *

= std <statistics:1_descriptive_statistics_visualization.std>

Standard deviation

== Syntax

- #raw("S = std(M)");

== Input argument

/ M: a vector, matrix or multidimensional array: single, double, int8, int16, int32, int64, uint8, uint16, uint32 or uint64.

== Output argument

/ S: Standard deviation of M.

== Description

#strong[S \= std(M)]; returns the standard deviation of the elements of M along the first array dimension whose size does not equal 1.

 For integer input data (int8, int16, int32, int64, uint8, uint16, uint32, uint64), the standard deviation is computed in double precision and #strong[S]; is double. The mean returned as second output is double too.


== Used function(s)

var mean cov

== Examples

``````matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
S = std(M)
``````

Integer input data

``````matlab
[S, M] = std(uint8([10 20 255]))
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
  [2.0.0], [Integer input data supported.],
)

// Author: Allan CORNET
