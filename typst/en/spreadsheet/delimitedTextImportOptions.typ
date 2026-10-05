#import "nelson_help.typ": *

= delimitedTextImportOptions <spreadsheet:delimitedTextImportOptions>

Create options for importing delimited text data.

== Syntax

- #raw("opts = delimitedTextImportOptions()");
- #raw("opts = delimitedTextImportOptions(Name, Value)");

== Input argument

/ Name, Value: name-value arguments such as 'NumVariables', 'VariableNames', 'VariableTypes', 'Delimiter', or 'DataLines'.

== Output argument

/ opts: nelson.io.text.DelimitedTextImportOptions object.

== Description

#strong[delimitedTextImportOptions]; creates an import options object for delimited text files.

 The object uses the Nelson class #strong[nelson.io.text.DelimitedTextImportOptions];.


== Example

``````matlab
opts = delimitedTextImportOptions('NumVariables', 3) opts.Delimiter = {';'} opts.DataLines = [2 Inf]
``````


== See also

#nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];, #nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:readcell>)[readcell];, #nlink(<spreadsheet:readmatrix>)[readmatrix];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
