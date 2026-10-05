#import "nelson_help.typ": *

= xlswrite <spreadsheet:xlswrite>

Write data to an Open XML spreadsheet file.

== Syntax

- #raw("status = xlswrite(filename, A)");
- #raw("status = xlswrite(filename, A, sheet)");
- #raw("status = xlswrite(filename, A, sheet, range)");
- #raw("[status, message] = xlswrite(...)");

== Input argument

/ filename: a string: .xlsx file name.
/ A: array, cell array, table, or timetable to write.
/ sheet: a string sheet name or a positive sheet index.
/ range: a string start cell or range in A1 notation.

== Output argument

/ status: logical value indicating whether the write succeeded.
/ message: empty string on success, or the error message on failure.

== Description

#strong[xlswrite]; writes supported Nelson values to .xlsx files using the Open XML backend.

 Complex arrays and object values are rejected because they do not map directly to workbook cells.


== Example

Write a matrix and read it back.

``````matlab
filename = [tempdir(), 'xlswrite_example.xlsx']; [status, message] = xlswrite(filename, magic(3), 'Data', 'A1'); values = xlsread(filename, 'Data', 'A1:C3')
``````


== See also

#nlink(<spreadsheet:xlsread>)[xlsread];, #nlink(<spreadsheet:xlsfinfo>)[xlsfinfo];, #nlink(<spreadsheet:writematrix>)[writematrix];, #nlink(<spreadsheet:writecell>)[writecell];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Open XML .xlsx support added.],
)

// Author: Allan CORNET
