#import "nelson_help.typ": *

= smoothdata <data_analysis:smoothdata>

Smooth noisy data.

== Syntax

- #raw("B = smoothdata(A)");
- #raw("B = smoothdata(A, method)");
- #raw("B = smoothdata(A, method, window)");
- #raw("B = smoothdata(A, dim)");
- #raw("B = smoothdata(A, dim, method)");
- #raw("B = smoothdata(A, dim, method, window)");
- #raw("B = smoothdata(__, nanflag)");
- #raw("B = smoothdata(__, Name, Value)");
- #raw("[B, window] = smoothdata(__)");

== Input argument

/ A: input vector or matrix: numeric or logical.
/ method: a character vector or string: smoothing method. See the description for the list of supported methods.
/ window: a positive scalar or a two-element vector #strong[\[back forward\]];: moving window length.
/ dim: dimension to operate along: positive integer scalar.
/ nanflag: a character vector or string: #strong['omitnan']; (default) or #strong['includenan'];.
/ Name, Value: parameter name\/value pairs: #strong['SamplePoints'];, #strong['SmoothingFactor'];, #strong['Degree'];.

== Output argument

/ B: smoothed data.
/ window: moving window length used for the smoothing.

== Description

#strong[smoothdata]; smooths noisy data in a vector or in the columns of a matrix.

 By default, #strong[smoothdata]; operates along the first non-singleton dimension using the #strong['movmean']; method and a heuristic window length chosen from the data.

 The supported values of #strong[method]; are:

 #strong['movmean'];: moving average over each window (default).

 #strong['movmedian'];: moving median over each window.

 #strong['gaussian'];: moving weighted average with Gaussian weights.

 #strong['lowess'];: local regression using a first-degree polynomial.

 #strong['loess'];: local regression using a second-degree polynomial.

 #strong['sgolay'];: Savitzky-Golay polynomial filter (use #strong['Degree']; to set the polynomial degree, default 2).

 The #strong['omitnan']; flag (default) ignores #strong[NaN]; values inside each window, while #strong['includenan']; propagates them.

 #strong['SmoothingFactor']; is a scalar between 0 and 1 that tunes the automatically chosen window length; larger values give more smoothing.

 #strong['SamplePoints']; is a vector of uniformly spaced sample coordinates; the window is then expressed in the units of these coordinates.

 The robust methods #strong['rlowess']; and #strong['rloess']; are not supported yet.


== Examples

moving average

``````matlab
A = [1 2 10 4 5];
B = smoothdata(A, 'movmean', 3)
``````

Gaussian smoothing

``````matlab
A = [1 2 10 4 5];
B = smoothdata(A, 'gaussian', 3)
``````

automatically chosen window

``````matlab
A = [1 2 10 4 5];
[B, window] = smoothdata(A)
``````


== See also

#nlink(<data_analysis:movmean>)[movmean];, #nlink(<data_analysis:movmedian>)[movmedian];, #nlink(<data_analysis:fillmissing>)[fillmissing];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
