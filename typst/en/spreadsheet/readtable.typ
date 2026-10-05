#import "nelson_help.typ": *

= readtable <spreadsheet:readtable>

Create table from file.

== Syntax

- #raw("T = readtable(filename)");
- #raw("T = readtable(filename, opts)");
- #raw("T = readtable(filename, 'TextType', type)");
- #raw("T = readtable(filename, Name, Value)");

== Input argument

/ filename: a string: filename source.
/ opts: nelson.io.text.DelimitedTextImportOptions object
/ type: a string: #strong['char']; (default, text columns as a cell array of character vectors) or #strong['string']; (text columns as a string array).
/ Name, Value: optional name-value arguments. For a JSON file: FileType, TableSelector, TableNodeName, VariableSelectors, RowNamesSelector, VariableUnitsSelector, VariableDescriptionsSelector, RepeatedNodeRule, ParsingMode, AllowComments, AllowInfAndNaN, AllowTrailingCommas, MissingRule, ImportErrorRule and TextType.

== Output argument

/ T: a table.

== Description

#strong[T \= readtable(filename)]; creates a table by importing column-oriented data from a text or spreadsheet file.

 #strong[T \= readtable(filename, opts)]; creates a table using the settings defined in the #strong[opts]; import options object. The import#strong[options]; object allows you to customize how#strong[readtable]; interprets the file, offering greater control, improved performance, and the ability to reuse the configuration compared to the default syntax.

 #strong[T \= readtable(filename, 'Range', range)]; reads only the rectangular block of the file selected by #strong[range];. For a delimited text file, #strong[range]; can be given as corner cells (#strong['A1:B5']; or a single corner #strong['A2'];), a column span (#strong['A:B'];), a row span (#strong['2:4'];), or a numeric vector #strong[\[firstRow firstCol lastRow lastCol\]];. When the first row of the range is made only of non-numeric text it is used for the variable names, otherwise the columns are named #strong[Var1];, #strong[Var2];, and so on.

 The #strong['Sheet']; name-value option applies to spreadsheet files only and is not supported for a delimited text file.

 #strong[JSON files];: a file with the #strong[.json]; extension, or any file read with #strong['FileType', 'json'];, is decoded with #strong[jsondecode]; and converted into a table.

 

- An array of objects gives one row per object and object keys become variables. Nested objects are flattened: each leaf value becomes a variable named after its key.
- An object whose values are all objects gives one row per key. Use #strong["Keys"]; in #strong[VariableSelectors]; to read the keys.
- When the root of the file is an object, the first array of objects found is read.
- Numbers give double, true and false give logical, text gives string (char with #strong['TextType', 'char'];), date and time text gives datetime or duration.
- null values and absent keys are missing values: NaN, \<missing\> or false for a logical variable.
- A JSON array value (repeated node) gives a matrix variable with one column per element. JSON name-value arguments:

 

- #strong[TableSelector];: RFC 6901 JSON Pointer of the table. #strong[""]; refers to the whole file.
- #strong[TableNodeName];: key name of the table data.
- #strong[VariableSelectors];: JSON Pointers of the variables, relative to a row object. #strong["Keys"]; reads the object keys.
- #strong[RowNamesSelector];: JSON Pointer of the row names.
- #strong[VariableUnitsSelector];, #strong[VariableDescriptionsSelector];: JSON Pointers, from the root of the file, of an object that maps variable names to units or descriptions.
- #strong[RepeatedNodeRule];: #strong['addcol']; (default), #strong['ignore']; (first element only) or #strong['error'];.
- #strong[ParsingMode];: #strong['lenient']; (default) or #strong['strict'];. It sets #strong[AllowComments]; (#strong[\/\/]; and #strong[\/\* \*\/]; comments), #strong[AllowInfAndNaN]; (Inf, -Inf, Infinity, NaN) and #strong[AllowTrailingCommas];, which can also be given one by one.
- #strong[MissingRule];, #strong[ImportErrorRule];: #strong['fill']; (default), #strong['error'];, #strong['omitrow']; or #strong['omitvar'];. With a JSON file, #strong[opts]; is a #strong[nelson.io.json.JSONImportOptions]; object (see #strong[jsonImportOptions];).


== Examples

``````matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T1 = table(Names, Age, Height, Weight); writetable(T1, [tempdir,'readtable_1.csv']) T2 = readtable([tempdir,'readtable_1.csv'])
``````

``````matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T = table(Names, Age, Height, Weight); writetable(T, [tempdir,'readtable_1.csv']) options = detectImportOptions([tempdir,'readtable_1.csv']); T1 = readtable([tempdir,'readtable_1.csv'], options) options.DataLines = [1 Inf] T2 = readtable([tempdir,'readtable_1.csv'], options)
``````

Read a JSON file:

``````matlab
T = table([1; 2; NaN], ["a"; "b"; missing], 'VariableNames', {'x', 'name'}); f = [tempdir, 'readtable_json.json']; writetable(T, f); T2 = readtable(f) opts = detectImportOptions(f, 'VariableSelectors', '/name'); T3 = readtable(f, opts)
``````


== See also

#nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:writetable>)[writetable];, #nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];, #nlink(<spreadsheet:readcell>)[readcell];, #nlink(<stream_manager:fileread>)[fileread];, #nlink(<spreadsheet:jsonImportOptions>)[jsonImportOptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
  [2.0.0], [JSON files: read JSON data as a table.],
)

// Author: Allan CORNET
