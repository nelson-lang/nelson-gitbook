#import "nelson_help.typ": *

= spreadsheetImportOptions <spreadsheet:spreadsheetImportOptions>

Create options for importing spreadsheet data.

== Syntax

- #raw("opts = spreadsheetImportOptions()");
- #raw("opts = spreadsheetImportOptions(Name, Value)");

== Input argument

/ Name, Value: name-value arguments such as 'NumVariables', 'VariableNames', 'VariableTypes', 'Sheet' or 'DataRange'.

== Output argument

/ opts: nelson.io.spreadsheet.SpreadsheetImportOptions object.

== Description

#strong[spreadsheetImportOptions]; creates an import options object for spreadsheet (xlsx) files.

 The object uses the Nelson class #strong[nelson.io.spreadsheet.SpreadsheetImportOptions]; and is consumed by #strong[readtable]; with the 'UseExcel' option set to false.

 Use #strong[setvaropts]; to configure per-variable options such as the datetime 'InputFormat'.


== Example

``````matlab
opts = spreadsheetImportOptions('NumVariables', 3);
opts.VariableNames = ["name", "value", "date"];
opts.VariableTypes = ["string", "double", "datetime"]
``````


== See also

#nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:setvaropts>)[setvaropts];, #nlink(<spreadsheet:readtable>)[readtable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
