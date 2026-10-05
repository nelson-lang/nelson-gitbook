#import "nelson_help.typ": *

= cumsum <data_analysis:cumsum>

Cumulative sum of array elements.

== Syntax

- #raw("R = cumsum(M)");
- #raw("R = cumsum(M, d)");
- #raw("R = cumsum(M, d, direction)");
- #raw("R = cumsum(M, d, direction, nanflag)");

== Input argument

/ M: an array of double, single, integers, ...
/ d: dimension to operate along: positive integer scalar.
/ direction: a string: 'reverse', 'forward' (default).
/ nanflag: a string: 'includenan' (default) or 'omitnan'.

== Output argument

/ R: Cumulative Sum of array elements.

== Description

#strong[R \= cumsum(M)]; returns the cumulative sum of the array elements of M.


== Example

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = cumsum(M)
R = cumsum(M, 'reverse')
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];, #nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:cumprod>)[cumprod];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
