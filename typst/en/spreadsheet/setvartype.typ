#import "nelson_help.typ": *

= setvartype <spreadsheet:setvartype>

Set variable data types for selected variables.

== Syntax

- #raw("opts = setvartype(opts, selection, types)");

== Input argument

/ opts: an import options object (delimited text or spreadsheet).
/ selection: variable names (character vector, string array or cell of character vectors) or numeric indices.
/ types: a single type applied to all selected variables, or one type per selected variable.

== Output argument

/ opts: the updated import options object.

== Description

#strong[setvartype]; sets the data types of the selected variables of an import options object, updating both #strong[VariableTypes]; and the per-variable options.


== Example

``````matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["id", "value"];
opts = setvartype(opts, ["id", "value"], 'double')
``````


== See also

#nlink(<spreadsheet:setvaropts>)[setvaropts];, #nlink(<spreadsheet:getvaropts>)[getvaropts];, #nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
