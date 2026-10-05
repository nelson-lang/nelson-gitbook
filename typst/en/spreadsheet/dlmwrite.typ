#import "nelson_help.typ": *

= dlmwrite <spreadsheet:dlmwrite>

Write an numeric matrix to a text file file using a delimiter.

== Syntax

- #raw("dlmwrite(filename, M)");
- #raw("dlmwrite(filename, M, delimiter)");
- #raw("dlmwrite(filename, M, '-append')");
- #raw("dlmwrite(filename, M, '-append', delimiter)");
- #raw("dlmwrite(filename, M, delimiter, r, c)");
- #raw("dlmwrite(filename, M, '-append', delimiter, r, c)");
- #raw("dlmwrite(filename, M, delimiter, r, c, eol)");
- #raw("dlmwrite(filename, M, '-append', delimiter, r, c, eol)");
- #raw("dlmwrite(filename, M, delimiter, r, c, eol, precision)");
- #raw("dlmwrite(filename, M, '-append', delimiter, r, c, eol, precision)");

== Input argument

/ filename: a string: filename destination.
/ M: an numeric or logical matrix.
/ delimiter: a string: ',' , '\\t', ';' delimiter. default ','
/ r, c: integer: offset. default : 0, 0
/ eol: a string: 'pc' or 'unix'.
/ precision: a integer or C format string. (default: 5)

== Description

#strong[dlmwrite]; writes an numeric matrix to an ASCII format file.


== Example

``````matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmwrite_example.csv'];
dlmwrite(filename, A);
R = dlmread(filename)
A = eye(3, 2);
dlmwrite(filename, A, ';', 4, 5);
R = fileread(filename)

``````


== See also

#nlink(<spreadsheet:dlmread>)[dlmread];, #nlink(<stream_manager:fileread>)[fileread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
