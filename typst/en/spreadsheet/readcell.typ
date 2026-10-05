#import "nelson_help.typ": *

= readcell <spreadsheet:readcell>

Create cell array from file.

== Syntax

- #raw("C = readcell(filename)");
- #raw("C = readcell(filename, opts)");

== Input argument

/ filename: a string: filename source.
/ opts: nelson.io.text.DelimitedTextImportOptions object

== Output argument

/ C: a cell.

== Description

#strong[C \= readcell(filename)]; creates a cell array by importing column-oriented data from a text or spreadsheet file.

 #strong[C \= readcell(filename, opts)]; creates a cell array using the settings defined in the #strong[opts]; import options object. The import#strong[options]; object allows you to customize how#strong[readcell]; interprets the file, offering greater control, improved performance, and the ability to reuse the configuration compared to the default syntax.


== Examples

``````matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T = table(Names, Age, Height, Weight); writetable(T, [tempdir,'readcell_1.csv']) C = readcell([tempdir,'readcell_1.csv'])
``````

``````matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T = table(Names, Age, Height, Weight); writetable(T, [tempdir,'readcell_1.csv']) options = detectImportOptions([tempdir,'readcell_1.csv']); C1 = readcell([tempdir,'readcell_1.csv'], options) options.DataLines = [1 Inf] C2 = readcell([tempdir,'readcell_1.csv'], options)
``````


== See also

#nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:writecell>)[writecell];, #nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];, #nlink(<spreadsheet:writetable>)[writetable];, #nlink(<spreadsheet:readtable>)[readtable];, #nlink(<stream_manager:fileread>)[fileread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
