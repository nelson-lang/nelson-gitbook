#import "nelson_help.typ": *

= cumprod <data_analysis:cumprod>

Cumulative product of array elements.

== Syntax

- #raw("R = cumprod(M)");
- #raw("R = cumprod(M, d)");
- #raw("R = cumprod(M, d, direction)");
- #raw("R = cumprod(M, d, direction, nanflag)");

== Input argument

/ M: an array of double, single, integers, ...
/ d: dimension to operate along: positive integer scalar.
/ direction: a string: 'reverse', 'forward' (default).
/ nanflag: a string: 'includenan' (default) or 'omitnan'.

== Output argument

/ R: Cumulative Product of array elements.

== Description

#strong[R \= cumprod(M)]; returns the cumulative product of the array elements of M.


== Example

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = cumprod(M)
R = cumprod(M, 'reverse')
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];, #nlink(<data_analysis:prod>)[prod];, #nlink(<data_analysis:cumsum>)[cumsum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
