#import "nelson_help.typ": *

= movstd <data_analysis:movstd>

Moving standard deviation.

== Syntax

- #raw("R = movstd(A, window)");
- #raw("R = movstd(A, window, d)");
- #raw("R = movstd(..., nanflag)");
- #raw("R = movstd(..., 'Endpoints', endpoints)");
- #raw("[R, M] = movstd(...)");

== Input argument

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Moving standard deviation.
/ M: Moving mean computed over the same windows as R (same size as R; a timetable for a timetable input).

== Description

#strong[movstd]; computes standard deviations over a centered moving window.


== Examples

``````matlab
A = [1 2 8 4 5];
R = movstd(A, 3)
``````

Moving standard deviation and moving mean

``````matlab
A = [4 8 6 -1 -2 -3 -1 3 4 5];
[R, M] = movstd(A, 3)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [moving mean returned as second output.],
)

// Author: Allan CORNET
