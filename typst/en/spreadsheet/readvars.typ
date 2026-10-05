#import "nelson_help.typ": *

= readvars <spreadsheet:readvars>

Create variables by reading column-oriented data from a file.

== Syntax

- #raw("[Var1, Var2, ..., VarN] = readvars(filename)");
- #raw("[Var1, Var2, ..., VarN] = readvars(filename, opts)");

== Input argument

/ filename: a string: an existing filename source.
/ opts: nelson.io.text.DelimitedTextImportOptions object

== Output argument

/ Var1, Var2, ..., VarN: the columns of the file, each returned as a separate variable.

== Description

#strong[\[Var1, Var2, ..., VarN\] \= readvars(filename)]; creates variables by importing column-oriented data from a text or spreadsheet file.

 Each column of the file is returned as a separate output variable. Text columns are returned as a cell array of character vectors and numeric columns as a column vector of type #strong[double];, following the same conventions as #strong[readtable];. Pass the #strong['TextType']; name-value option with the value #strong['string']; to return text columns as a #strong[string]; array instead.

 Name-value options accepted by #strong[readtable];, such as #strong['Range'];, are forwarded. Using #strong['Range']; restricts the columns and rows returned as variables.

 When fewer output variables are requested than the number of columns in the file, only the first columns are returned. Requesting more output variables than there are columns raises an error.

 #strong[\[Var1, Var2, ..., VarN\] \= readvars(filename, opts)]; uses the settings defined in the #strong[opts]; import options object. Any additional arguments are forwarded to #strong[readtable];.


== Example

``````matlab
filename = [tempdir, 'readvars_1.csv']; Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; T = table(Names, Age, Height); writetable(T, filename) [N, A, H] = readvars(filename)
``````


== See also

#nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:readmatrix>)[readmatrix];, #nlink(<spreadsheet:readcell>)[readcell];, #nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
