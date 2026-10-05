#import "nelson_help.typ": *

= csvwrite <spreadsheet:csvwrite>

Write comma-separated value file.

== Syntax

- #raw("csvwrite(filename, M)");
- #raw("csvwrite(filename, M, r, c)");

== Input argument

/ filename: a string: filename destination.
/ M: an numeric or logical matrix.
/ r, c: integer: offset. default : 0, 0

== Description

#strong[csvwrite]; writes an numeric matrix to an CSV format file.


== Example

``````matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmwrite_example.csv'];
csvwrite(filename, A);
R = csvread(filename)
A = eye(3, 2);
csvwrite(filename, A);
R = fileread(filename)

``````


== See also

#nlink(<spreadsheet:csvread>)[csvread];, #nlink(<spreadsheet:dlmread>)[dlmread];, #nlink(<stream_manager:fileread>)[fileread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
