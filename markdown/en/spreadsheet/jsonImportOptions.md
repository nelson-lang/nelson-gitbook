# jsonImportOptions

Create options for importing JSON data.

## 📝 Syntax

- opts = jsonImportOptions()
- opts = jsonImportOptions('NumVariables', numVars)
- opts = jsonImportOptions(..., Name, Value)

## 📥 Input argument

- numVars - number of variables (default: 1).
- Name, Value - property names and values of the object, and <b>'ParsingMode'</b> (<b>'lenient'</b> or <b>'strict'</b>) which sets <b>AllowComments</b>, <b>AllowInfAndNaN</b> and <b>AllowTrailingCommas</b>.

## 📤 Output argument

- opts - nelson.io.json.JSONImportOptions object.

## 📄 Description

<b>jsonImportOptions</b> creates an import options object for JSON files, to use with <b>readtable</b> and <b>readtimetable</b>. <b>detectImportOptions</b> returns the same object, filled from a JSON file.

Properties:

- <b>VariableNames</b>: names of the variables (default: Var1, Var2, ...).
- <b>VariableNamingRule</b>: <b>'preserve'</b> (default) or <b>'modify'</b>.
- <b>VariableTypes</b>: types of the variables: <b>'double'</b>, <b>'single'</b>, integer types, <b>'logical'</b>, <b>'string'</b>, <b>'char'</b>, <b>'categorical'</b>, <b>'datetime'</b>, <b>'duration'</b> or <b>'cell'</b> (default: <b>'char'</b>).
- <b>SelectedVariableNames</b>: subset of the variables to import.
- <b>VariableSelectors</b>: RFC 6901 JSON Pointers of the variables, relative to a row object. <b>"Keys"</b> reads the object keys. When empty, all leaf values are read.
- <b>RowNamesSelector</b>: JSON Pointer of the row names.
- <b>TableSelector</b>: JSON Pointer of the table (<b>""</b>, the default, is the whole file).
- <b>VariableDescriptionsSelector</b>, <b>VariableUnitsSelector</b>: JSON Pointers of the variable descriptions and units.
- <b>ImportErrorRule</b>, <b>MissingRule</b>: <b>'fill'</b> (default), <b>'error'</b>, <b>'omitrow'</b> or <b>'omitvar'</b>.
- <b>RepeatedNodeRule</b>: <b>'addcol'</b> (default), <b>'ignore'</b> or <b>'error'</b>.
- <b>AllowComments</b>, <b>AllowInfAndNaN</b>, <b>AllowTrailingCommas</b>: accept comments, Inf and NaN values, trailing commas (default: <code>true</code>).

The object uses the Nelson class <b>nelson.io.json.JSONImportOptions</b>.

## 💡 Example

Select a nested value of each row:

```matlab
f = [tempdir, 'students.json']; fid = fopen(f, 'w'); fprintf(fid, '%s', '[{"Name": {"FirstName": "Priya"}}, {"Name": {"FirstName": "Conor"}}]'); fclose(fid); opts = jsonImportOptions('VariableSelectors', "/Name/FirstName", 'TableSelector', "") T = readtable(f, opts)
```

## 🔗 See also

[detectImportOptions](../spreadsheet/detectImportOptions.md), [readtable](../spreadsheet/readtable.md), [readtimetable](../spreadsheet/readtimetable.md), [jsondecode](../json/jsondecode.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
