#import "nelson_help.typ": *

= setvaropts <spreadsheet:setvaropts>

Set variable import options for selected variables.

== Syntax

- #raw("opts = setvaropts(opts, selection, Name, Value)");
- #raw("opts = setvaropts(opts, selection, Name1, Value1, Name2, Value2, ...)");

== Input argument

/ opts: an import options object (delimited text or spreadsheet).
/ selection: variable names (character vector, string array or cell of character vectors) or numeric indices.
/ Name, Value: per-variable options such as 'Type', 'InputFormat', 'WhitespaceRule', 'EmptyFieldRule' or 'FillValue'.

== Output argument

/ opts: the updated import options object.

== Description

#strong[setvaropts]; sets per-variable import options for the selected variables of an import options object and returns the updated object.

 The selection is validated against the declared variable names. Setting the 'Type' option also updates the corresponding entry of #strong[VariableTypes];.


== Example

``````matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["date", "value"];
opts.VariableTypes = ["datetime", "double"];
opts = setvaropts(opts, "date", 'InputFormat', 'MM/dd/yy')
``````


== See also

#nlink(<spreadsheet:getvaropts>)[getvaropts];, #nlink(<spreadsheet:setvartype>)[setvartype];, #nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:spreadsheetImportOptions>)[spreadsheetImportOptions];, #nlink(<spreadsheet:readtable>)[readtable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
