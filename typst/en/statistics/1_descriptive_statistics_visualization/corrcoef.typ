#import "../nelson_help.typ": *

= corrcoef <statistics:1_descriptive_statistics_visualization.corrcoef>

Correlation coefficients

== Syntax

- #raw("R = corrcoef(M)");

== Input argument

/ M: a vector or matrix

== Output argument

/ R: Correlation coefficients of M.

== Description

#strong[R \= corrcoef(M)]; returns the matrix of correlation coefficients for#strong[M];, where the columns of #strong[M]; represent random variables and the rows represent observations.

 The Pearson correlation coefficient between variables

 #latex("X"); and

 #latex("Y"); is:

 #latex("r_{XY} = \\frac{\\text{cov}(X,Y)}{\\sigma_X \\sigma_Y} = \\frac{\\sum_{i=1}^n (x_i - \\bar{x})(y_i - \\bar{y})}{\\sqrt{\\sum_{i=1}^n (x_i - \\bar{x})^2 \\sum_{i=1}^n (y_i - \\bar{y})^2}}"); where

 #latex("\\bar{x}"); and

 #latex("\\bar{y}"); are the sample means, and

 #latex("\\sigma_X"); ,

 #latex("\\sigma_Y"); are the standard deviations.

 The correlation coefficient ranges from -1 to +1, where -1 indicates perfect negative correlation, +1 indicates perfect positive correlation, and 0 indicates no linear correlation.


== Used function(s)

cov std var

== Example

``````matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
R = corrcoef(M)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
