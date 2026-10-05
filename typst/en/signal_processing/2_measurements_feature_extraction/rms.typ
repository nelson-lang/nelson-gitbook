#import "../nelson_help.typ": *

= rms <signal_processing:2_measurements_feature_extraction.rms>

Root mean square value.

== Syntax

- #raw("Y = rms(X)");
- #raw("Y = rms(X, DIM)");
- #raw("Y = rms(X, VECDIM)");
- #raw("Y = rms(X, \"all\")");
- #raw("Y = rms(..., TYPE)");
- #raw("Y = rms(..., NANFLAG)");

== Input argument

/ X: input data: single, double, logical or integer.
/ DIM: dimension to operate along.
/ VECDIM: vector of dimensions to operate along.
/ "all": operate on every element of X.
/ TYPE: class of the result: "default", "double" or "native".
/ NANFLAG: "includenan" or "omitnan". "includemissing" and "omitmissing" are also accepted.

== Output argument

/ Y: root mean square values.

== Description

#strong[rms]; computes sqrt(mean(abs(X) .^ 2)) along the selected dimension:

 #latex("\\mathrm{RMS}(X) = \\sqrt{ \\frac{1}{N} \\sum_{n=1}^{N} |x_n|^2 }"); where N is the number of elements along that dimension.

 

- If #strong[X]; is a vector, #strong[Y]; is a scalar.
- If #strong[X]; is a matrix, #strong[Y]; is a row vector holding the value of each column.
- If #strong[X]; is a multidimensional array, #strong[Y]; is computed along the first dimension whose size is not 1, unless a dimension is given.

 #strong[Class of the result:]; the square and the mean always run in double, so an integer input never saturates. #strong["native"]; returns the class of the input, #strong["double"]; returns double, and #strong["default"]; returns double for an integer input and the class of the input otherwise. A logical input is not an integer class and returns double.

 #strong[Missing values:]; NaN values are included by default. Use #strong["omitnan"]; or #strong["omitmissing"]; to leave them out.


== Examples

root mean square of a vector

``````matlab

t = 0:0.001:1-0.001;
x = cos(2*pi*100*t);
y = rms(x)
% y = 0.7071

``````

one value per column

``````matlab

x = [4 -5 1; 2 3 5; -9 1 7];
y = rms(x)
% y = [5.8023 3.4157 5.0000]

``````

one value per row

``````matlab

x = [6 4 23 -3; 9 -10 4 11; 2 8 -5 1];
y = rms(x, 2)
% y = [12.1450; 8.9163; 4.8477]

``````

leaving missing values out

``````matlab

x = [1.77 -0.005 nan -2.95; nan 0.34 nan 0.19];
y = rms(x, "omitnan")
% y = [1.7700 0.2404 nan 2.0903]

``````

integer input with a native result

``````matlab

M = uint8([10:30:70; 20:30:80; 30:30:90]);
R = rms(M, 'native')
% R = uint8([22 51 80])
D = rms(M)
% D = [21.6025 50.6623 80.4156]

``````


== See also

#nlink(<signal_processing:2_measurements_feature_extraction.peak2peak>)[peak2peak];, #nlink(<data_analysis:max>)[max];, #nlink(<data_analysis:min>)[min];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
