# readtable

Create table from file.

## 📝 Syntax

- T = readtable(filename)
- T = readtable(filename, opts)
- T = readtable(filename, 'TextType', type)
- T = readtable(filename, Name, Value)

## 📥 Input argument

- filename - a string: filename source.
- opts - nelson.io.text.DelimitedTextImportOptions object
- type - a string: <b>'char'</b> (default, text columns as a cell array of character vectors) or <b>'string'</b> (text columns as a string array).
- Name, Value - optional name-value arguments. For a JSON file: FileType, TableSelector, TableNodeName, VariableSelectors, RowNamesSelector, VariableUnitsSelector, VariableDescriptionsSelector, RepeatedNodeRule, ParsingMode, AllowComments, AllowInfAndNaN, AllowTrailingCommas, MissingRule, ImportErrorRule and TextType.

## 📤 Output argument

- T - a table.

## 📄 Description


<b>T = readtable(filename)</b> creates a table by importing column-oriented data from a text or spreadsheet file. 

<b>T = readtable(filename, opts)</b> creates a table using the settings defined in the <b>opts</b> import options object. The import<b>options</b> object allows you to customize how<b>readtable</b> interprets the file, offering greater control, improved performance, and the ability to reuse the configuration compared to the default syntax. 

<b>T = readtable(filename, 'Range', range)</b> reads only the rectangular block of the file selected by <b>range</b>. For a delimited text file, <b>range</b> can be given as corner cells (<b>'A1:B5'</b> or a single corner <b>'A2'</b>), a column span (<b>'A:B'</b>), a row span (<b>'2:4'</b>), or a numeric vector <b>[firstRow firstCol lastRow lastCol]</b>. When the first row of the range is made only of non-numeric text it is used for the variable names, otherwise the columns are named <b>Var1</b>, <b>Var2</b>, and so on. 

The <b>'Sheet'</b> name-value option applies to spreadsheet files only and is not supported for a delimited text file. 

<b>JSON files</b>: a file with the <b>.json</b> extension, or any file read with <b>'FileType', 'json'</b>, is decoded with <b>jsondecode</b> and converted into a table. 

- An array of objects gives one row per object and object keys become variables. Nested objects are flattened: each leaf value becomes a variable named after its key. 
- An object whose values are all objects gives one row per key. Use <b>"Keys"</b> in <b>VariableSelectors</b> to read the keys. 
- When the root of the file is an object, the first array of objects found is read. 
- Numbers give double, true and false give logical, text gives string (char with <b>'TextType', 'char'</b>), date and time text gives datetime or duration. 
- null values and absent keys are missing values: NaN, <missing> or false for a logical variable. 
- A JSON array value (repeated node) gives a matrix variable with one column per element. 

JSON name-value arguments: 

- <b>TableSelector</b>: RFC 6901 JSON Pointer of the table. <b>""</b> refers to the whole file. 
- <b>TableNodeName</b>: key name of the table data. 
- <b>VariableSelectors</b>: JSON Pointers of the variables, relative to a row object. <b>"Keys"</b> reads the object keys. 
- <b>RowNamesSelector</b>: JSON Pointer of the row names. 
- <b>VariableUnitsSelector</b>, <b>VariableDescriptionsSelector</b>: JSON Pointers, from the root of the file, of an object that maps variable names to units or descriptions. 
- <b>RepeatedNodeRule</b>: <b>'addcol'</b> (default), <b>'ignore'</b> (first element only) or <b>'error'</b>. 
- <b>ParsingMode</b>: <b>'lenient'</b> (default) or <b>'strict'</b>. It sets <b>AllowComments</b> (<b>//</b> and <b>/\* \*/</b> comments), <b>AllowInfAndNaN</b> (Inf, -Inf, Infinity, NaN) and <b>AllowTrailingCommas</b>, which can also be given one by one. 
- <b>MissingRule</b>, <b>ImportErrorRule</b>: <b>'fill'</b> (default), <b>'error'</b>, <b>'omitrow'</b> or <b>'omitvar'</b>. 

With a JSON file, <b>opts</b> is a <b>nelson.io.json.JSONImportOptions</b> object (see <b>jsonImportOptions</b>).

## 💡 Examples



```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T1 = table(Names, Age, Height, Weight); writetable(T1, [tempdir,'readtable_1.csv']) T2 = readtable([tempdir,'readtable_1.csv'])
```


```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T = table(Names, Age, Height, Weight); writetable(T, [tempdir,'readtable_1.csv']) options = detectImportOptions([tempdir,'readtable_1.csv']); T1 = readtable([tempdir,'readtable_1.csv'], options) options.DataLines = [1 Inf] T2 = readtable([tempdir,'readtable_1.csv'], options)
```
Read a JSON file:

```matlab
T = table([1; 2; NaN], ["a"; "b"; missing], 'VariableNames', {'x', 'name'}); f = [tempdir, 'readtable_json.json']; writetable(T, f); T2 = readtable(f) opts = detectImportOptions(f, 'VariableSelectors', '/name'); T3 = readtable(f, opts)
```


## 🔗 See also

[delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md), [writetable](../spreadsheet/writetable.md), [detectImportOptions](../spreadsheet/detectImportOptions.md), [readcell](../spreadsheet/readcell.md), [fileread](../stream_manager/fileread.md), [jsonImportOptions](../spreadsheet/jsonImportOptions.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.10.0   | initial version |
| 2.0.0   | JSON files: read JSON data as a table. |

<!--
## 👤 Author

Allan CORNET
-->
