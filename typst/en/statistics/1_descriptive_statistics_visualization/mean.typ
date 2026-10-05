#import "../nelson_help.typ": *

= mean <statistics:1_descriptive_statistics_visualization.mean>

Mean of array elements.

== Syntax

- #raw("R = mean(M)");
- #raw("R = mean(M, d)");
- #raw("R = mean(M, 'all')");
- #raw("R = mean(M, d, t)");
- #raw("R = mean(M, 'all', t)");
- #raw("R = mean(M, d, t, f)");
- #raw("R = mean(M, 'all', t, f)");

== Input argument

/ M: an array of double, single, integers, ...
/ d: dimension to operate along: positive integer scalar.
/ t: a string: 'default', 'double' or 'native'.
/ f: a string: 'includenan' or 'omitnan'.

== Output argument

/ R: Mean of array elements.

== Description

#strong[R \= mean(M)]; returns the mean (average) of the array elements of M.

 The arithmetic mean of a set of values

 #latex("x_1, x_2, \\ldots, x_n"); is defined as:

 #latex("\\bar{x} = \\frac{1}{n} \\sum_{i=1}^{n} x_i"); where

 #latex("n"); is the number of elements.


== Used function(s)

median mode std var

== Example

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = mean(M, 'native')
``````


== See also

#nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:prod>)[prod];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
