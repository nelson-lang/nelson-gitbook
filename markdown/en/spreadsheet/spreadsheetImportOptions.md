# spreadsheetImportOptions

Create options for importing spreadsheet data.

## 📝 Syntax

- opts = spreadsheetImportOptions()
- opts = spreadsheetImportOptions(Name, Value)

## 📥 Input argument

- Name, Value - name-value arguments such as 'NumVariables', 'VariableNames', 'VariableTypes', 'Sheet' or 'DataRange'.

## 📤 Output argument

- opts - nelson.io.spreadsheet.SpreadsheetImportOptions object.

## 📄 Description


<b>spreadsheetImportOptions</b> creates an import options object for spreadsheet (xlsx) files. 

The object uses the Nelson class <b>nelson.io.spreadsheet.SpreadsheetImportOptions</b> and is consumed by <b>readtable</b> with the 'UseExcel' option set to false. 

Use <b>setvaropts</b> to configure per-variable options such as the datetime 'InputFormat'.

## 💡 Example



```matlab
opts = spreadsheetImportOptions('NumVariables', 3);
opts.VariableNames = ["name", "value", "date"];
opts.VariableTypes = ["string", "double", "datetime"]
```


## 🔗 See also

[delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md), [setvaropts](../spreadsheet/setvaropts.md), [readtable](../spreadsheet/readtable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
