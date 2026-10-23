#import "nelson_help.typ": *

= getvaropts <spreadsheet:getvaropts>

Get variable import options for selected variables.

== Syntax

- #raw("value = getvaropts(opts, selection)");

== Input argument

/ opts: an import options object (delimited text or spreadsheet).
/ selection: variable names (character vector, string array or cell of character vectors) or numeric indices.

== Output argument

/ value: a structure array with the per-variable options of the selected variables.

== Description

#strong[getvaropts]; returns the per-variable import options of the selected variables of an import options object.


== Example

``````matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["date", "value"];
opts.VariableTypes = ["datetime", "double"];
opts = setvaropts(opts, "date", 'InputFormat', 'MM/dd/yy');
getvaropts(opts, "date")
``````


== See also

#nlink(<spreadsheet:setvaropts>)[setvaropts];, #nlink(<spreadsheet:setvartype>)[setvartype];, #nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
