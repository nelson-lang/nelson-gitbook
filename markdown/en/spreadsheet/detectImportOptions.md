# detectImportOptions

Create import options based on file content.

## 📝 Syntax

- options = detectImportOptions(filename)
- options = detectImportOptions(filename, Name, Value)

## 📥 Input argument

- filename - a string: filename source.
- Name, Value - JSON files only: FileType, TableSelector, TableNodeName, VariableSelectors, RowNamesSelector, VariableUnitsSelector, VariableDescriptionsSelector, RepeatedNodeRule, ParsingMode, AllowComments, AllowInfAndNaN, AllowTrailingCommas, MissingRule, ImportErrorRule and TextType (see <b>readtable</b>).

## 📤 Output argument

- options - nelson.io.text.DelimitedTextImportOptions object.

## 📄 Description

<b>options = detectImportOptions(filename)</b> identifies a table in a delimited text file and returns a <b>nelson.io.text.DelimitedTextImportOptions</b> object.

You can customize this object and use it with<b>readtable</b>, <b>readcell</b> or<b>readmatrix</b> to control how Nelson imports data as a table, cell array, or matrix.

Properties:

<b>Delimiter</b>: Field delimiter characters. example: {','}

<b>LineEnding</b>: End-of-line characters. example: {'\\r\\n'}

<b>CommentStyle</b>: Style of comments. example: {'#'}

<b>EmptyLineRule</b>: Procedure to handle empty lines. example: 'skip'

<b>VariableNamesLine</b>: Variable names location. example: 1

<b>VariableNames</b>: Variable names. example: {'Names' 'Age' 'Height' 'Weight'}

<b>RowNamesColumn</b>: Row names location. example: 0

<b>DataLines</b>: Data location, <b>[l1 l2]</b> Indicate the range of lines containing the data. <b>l1</b> refers to the first line with data, while <b>l2</b> refers to the last line. example: [2 Inf]

For a <b>JSON file</b> (<b>.json</b> extension or <b>'FileType', 'json'</b>), <b>detectImportOptions</b> returns a <b>nelson.io.json.JSONImportOptions</b> object usable with <b>readtable</b> and <b>readtimetable</b>. Its <b>TableSelector</b> and <b>VariableSelectors</b> properties hold the detected JSON Pointers, <b>VariableNames</b> and <b>VariableTypes</b> the detected names and types.

## 💡 Examples

```matlab
  Names = {'John'; 'Alice'; 'Bob'; 'Diana'};  Age = [28; 34; 22; 30];  Height = [175; 160; 180; 165];  Weight = [70; 55; 80; 60];  T = table(Names, Age, Height, Weight);  writetable(T, [tempdir,'readcell_1.csv'])  options = detectImportOptions([tempdir,'readcell_1.csv'])  C1 = readcell([tempdir,'readcell_1.csv'], options)  options.DataLines = [1 Inf]  C2 = readcell([tempdir,'readcell_1.csv'], options)
```

Detect the options of a JSON file:

```matlab
T = table([1; 2], ["a"; "b"], 'VariableNames', {'x', 'name'}); f = [tempdir, 'detect_json.json']; writetable(T, f); opts = detectImportOptions(f) opts.SelectedVariableNames = {'name'}; T2 = readtable(f, opts)
```

## 🔗 See also

[delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md), [readcell](../spreadsheet/readcell.md), [readtable](../spreadsheet/readtable.md), [readmatrix](../spreadsheet/readmatrix.md), [jsonImportOptions](../spreadsheet/jsonImportOptions.md).

## 🕔 History

| Version | 📄 Description                                  |
| ------- | ----------------------------------------------- |
| 1.10.0  | initial version                                 |
| 2.0.0   | JSON files: returns a JSONImportOptions object. |

<!--
## 👤 Author

Allan CORNET
-->
