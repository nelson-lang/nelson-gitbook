#import "nelson_help.typ": *

= xlsfinfo <spreadsheet:xlsfinfo>

Return information about an Open XML spreadsheet file.

== Syntax

- #raw("status = xlsfinfo(filename)");
- #raw("[status, sheets, format] = xlsfinfo(filename)");

== Input argument

/ filename: a string: .xlsx file name.

== Output argument

/ status: format status string, or an empty string if the file cannot be read.
/ sheets: cell array of sheet names.
/ format: format string.

== Description

#strong[xlsfinfo]; returns workbook metadata for .xlsx files supported by the Open XML backend.


== Example

List workbook sheets.

``````matlab
filename = [tempdir(), 'xlsfinfo_example.xlsx']; xlswrite(filename, [1 2], 'Run1', 'A1'); [status, sheets, format] = xlsfinfo(filename)
``````


== See also

#nlink(<spreadsheet:xlsread>)[xlsread];, #nlink(<spreadsheet:xlswrite>)[xlswrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
