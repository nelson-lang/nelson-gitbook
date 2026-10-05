#import "nelson_help.typ": *

= jsonImportOptions <spreadsheet:jsonImportOptions>

Create options for importing JSON data.

== Syntax

- #raw("opts = jsonImportOptions()");
- #raw("opts = jsonImportOptions('NumVariables', numVars)");
- #raw("opts = jsonImportOptions(..., Name, Value)");

== Input argument

/ numVars: number of variables (default: 1).
/ Name, Value: property names and values of the object, and #strong['ParsingMode']; (#strong['lenient']; or #strong['strict'];) which sets #strong[AllowComments];, #strong[AllowInfAndNaN]; and #strong[AllowTrailingCommas];.

== Output argument

/ opts: nelson.io.json.JSONImportOptions object.

== Description

#strong[jsonImportOptions]; creates an import options object for JSON files, to use with #strong[readtable]; and #strong[readtimetable];. #strong[detectImportOptions]; returns the same object, filled from a JSON file.

 Properties:

 

- #strong[VariableNames];: names of the variables (default: Var1, Var2, ...).
- #strong[VariableNamingRule];: #strong['preserve']; (default) or #strong['modify'];.
- #strong[VariableTypes];: types of the variables: #strong['double'];, #strong['single'];, integer types, #strong['logical'];, #strong['string'];, #strong['char'];, #strong['categorical'];, #strong['datetime'];, #strong['duration']; or #strong['cell']; (default: #strong['char'];).
- #strong[SelectedVariableNames];: subset of the variables to import.
- #strong[VariableSelectors];: RFC 6901 JSON Pointers of the variables, relative to a row object. #strong["Keys"]; reads the object keys. When empty, all leaf values are read.
- #strong[RowNamesSelector];: JSON Pointer of the row names.
- #strong[TableSelector];: JSON Pointer of the table (#strong[""];, the default, is the whole file).
- #strong[VariableDescriptionsSelector];, #strong[VariableUnitsSelector];: JSON Pointers of the variable descriptions and units.
- #strong[ImportErrorRule];, #strong[MissingRule];: #strong['fill']; (default), #strong['error'];, #strong['omitrow']; or #strong['omitvar'];.
- #strong[RepeatedNodeRule];: #strong['addcol']; (default), #strong['ignore']; or #strong['error'];.
- #strong[AllowComments];, #strong[AllowInfAndNaN];, #strong[AllowTrailingCommas];: accept comments, Inf and NaN values, trailing commas (default: #raw("true");). The object uses the Nelson class #strong[nelson.io.json.JSONImportOptions];.


== Example

Select a nested value of each row:

``````matlab
f = [tempdir, 'students.json']; fid = fopen(f, 'w'); fprintf(fid, '%s', '[{"Name": {"FirstName": "Priya"}}, {"Name": {"FirstName": "Conor"}}]'); fclose(fid); opts = jsonImportOptions('VariableSelectors', "/Name/FirstName", 'TableSelector', "") T = readtable(f, opts)
``````


== See also

#nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];, #nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:readtimetable>)[readtimetable];, #nlink(<json:jsondecode>)[jsondecode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
