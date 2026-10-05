#import "nelson_help.typ": *

= detectImportOptions <spreadsheet:detectImportOptions>

Create import options based on file content.

== Syntax

- #raw("options = detectImportOptions(filename)");
- #raw("options = detectImportOptions(filename, Name, Value)");

== Input argument

/ filename: a string: filename source.
/ Name, Value: JSON files only: FileType, TableSelector, TableNodeName, VariableSelectors, RowNamesSelector, VariableUnitsSelector, VariableDescriptionsSelector, RepeatedNodeRule, ParsingMode, AllowComments, AllowInfAndNaN, AllowTrailingCommas, MissingRule, ImportErrorRule and TextType (see #strong[readtable];).

== Output argument

/ options: nelson.io.text.DelimitedTextImportOptions object.

== Description

#strong[options \= detectImportOptions(filename)]; identifies a table in a delimited text file and returns a #strong[nelson.io.text.DelimitedTextImportOptions]; object.

 You can customize this object and use it with#strong[readtable];, #strong[readcell]; or#strong[readmatrix]; to control how Nelson imports data as a table, cell array, or matrix.

 

 Properties:

 #strong[Delimiter];: Field delimiter characters. example: {','}

 #strong[LineEnding];: End-of-line characters. example: {'\\r\\n'}

 #strong[CommentStyle];: Style of comments. example: {'\#'}

 #strong[EmptyLineRule];: Procedure to handle empty lines. example: 'skip'

 #strong[VariableNamesLine];: Variable names location. example: 1

 #strong[VariableNames];: Variable names. example: {'Names' 'Age' 'Height' 'Weight'}

 #strong[RowNamesColumn];: Row names location. example: 0

 #strong[DataLines];: Data location, #strong[\[l1 l2\]]; Indicate the range of lines containing the data. #strong[l1]; refers to the first line with data, while #strong[l2]; refers to the last line. example: \[2 Inf\]

 For a #strong[JSON file]; (#strong[.json]; extension or #strong['FileType', 'json'];), #strong[detectImportOptions]; returns a #strong[nelson.io.json.JSONImportOptions]; object usable with #strong[readtable]; and #strong[readtimetable];. Its #strong[TableSelector]; and #strong[VariableSelectors]; properties hold the detected JSON Pointers, #strong[VariableNames]; and #strong[VariableTypes]; the detected names and types.


== Examples

``````matlab
  Names = {'John'; 'Alice'; 'Bob'; 'Diana'};  Age = [28; 34; 22; 30];  Height = [175; 160; 180; 165];  Weight = [70; 55; 80; 60];  T = table(Names, Age, Height, Weight);  writetable(T, [tempdir,'readcell_1.csv'])  options = detectImportOptions([tempdir,'readcell_1.csv'])  C1 = readcell([tempdir,'readcell_1.csv'], options)  options.DataLines = [1 Inf]  C2 = readcell([tempdir,'readcell_1.csv'], options)  
``````

Detect the options of a JSON file:

``````matlab
T = table([1; 2], ["a"; "b"], 'VariableNames', {'x', 'name'}); f = [tempdir, 'detect_json.json']; writetable(T, f); opts = detectImportOptions(f) opts.SelectedVariableNames = {'name'}; T2 = readtable(f, opts)
``````


== See also

#nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:readcell>)[readcell];, #nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:readmatrix>)[readmatrix];, #nlink(<spreadsheet:jsonImportOptions>)[jsonImportOptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
  [2.0.0], [JSON files: returns a JSONImportOptions object.],
)

// Author: Allan CORNET
