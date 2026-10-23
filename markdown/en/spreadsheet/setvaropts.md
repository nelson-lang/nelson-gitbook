# setvaropts

Set variable import options for selected variables.

## 📝 Syntax

- opts = setvaropts(opts, selection, Name, Value)
- opts = setvaropts(opts, selection, Name1, Value1, Name2, Value2, ...)

## 📥 Input argument

- opts - an import options object (delimited text or spreadsheet).
- selection - variable names (character vector, string array or cell of character vectors) or numeric indices.
- Name, Value - per-variable options such as 'Type', 'InputFormat', 'WhitespaceRule', 'EmptyFieldRule' or 'FillValue'.

## 📤 Output argument

- opts - the updated import options object.

## 📄 Description


<b>setvaropts</b> sets per-variable import options for the selected variables of an import options object and returns the updated object. 

The selection is validated against the declared variable names. Setting the 'Type' option also updates the corresponding entry of <b>VariableTypes</b>.

## 💡 Example



```matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["date", "value"];
opts.VariableTypes = ["datetime", "double"];
opts = setvaropts(opts, "date", 'InputFormat', 'MM/dd/yy')
```


## 🔗 See also

[getvaropts](../spreadsheet/getvaropts.md), [setvartype](../spreadsheet/setvartype.md), [delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md), [spreadsheetImportOptions](../spreadsheet/spreadsheetImportOptions.md), [readtable](../spreadsheet/readtable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
