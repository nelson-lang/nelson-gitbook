# delimitedTextImportOptions

Create options for importing delimited text data.

## 📝 Syntax

- opts = delimitedTextImportOptions()
- opts = delimitedTextImportOptions(Name, Value)

## 📥 Input argument

- Name, Value - name-value arguments such as 'NumVariables', 'VariableNames', 'VariableTypes', 'Delimiter', or 'DataLines'.

## 📤 Output argument

- opts - nelson.io.text.DelimitedTextImportOptions object.

## 📄 Description

<b>delimitedTextImportOptions</b> creates an import options object for delimited text files.

The object uses the Nelson class <b>nelson.io.text.DelimitedTextImportOptions</b>.

## 💡 Example

```matlab
opts = delimitedTextImportOptions('NumVariables', 3) opts.Delimiter = {';'} opts.DataLines = [2 Inf]
```

## 🔗 See also

[detectImportOptions](../spreadsheet/detectImportOptions.md), [readtable](../spreadsheet/readtable.md), [readcell](../spreadsheet/readcell.md), [readmatrix](../spreadsheet/readmatrix.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
