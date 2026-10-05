#import "nelson_help.typ": *

= detrend <data_analysis:detrend>

Remove polynomial trend.

== Syntax

- #raw("y = detrend(x)");
- #raw("y = detrend(x, n)");
- #raw("y = detrend(x, method)");
- #raw("y = detrend(x, n, bp)");

== Input argument

/ x: a real vector or matrix. For a matrix, each column is detrended independently.
/ n: trend order: 0 removes the mean, 1 (default) removes a best-fit straight line.
/ method: 'constant' (same as 0) or 'linear' (same as 1).
/ bp: breakpoints given as row indices, producing a continuous piecewise-linear trend.

== Output argument

/ y: the data with the trend removed, with the same size and class as #strong[x];.

== Description

#strong[detrend]; removes a low-order polynomial trend from data by a least-squares fit and returns the residual.

 By default it removes a straight-line trend. With #strong[n]; equal to 0 (or the method #strong['constant'];) it removes only the mean. Breakpoints produce a continuous piecewise-linear trend joined at the given row indices.

 A row vector input returns a row vector; a column vector returns a column vector.


== Examples

``````matlab
t = 0:0.1:2;
x = 3 * t + sin(t);
y = detrend(x)

``````

``````matlab
y = detrend([1 3 2 4 6], 'constant')

``````


== See also

#nlink(<data_analysis:cumsum>)[cumsum];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<polynomial_functions:polyfit>)[polyfit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
