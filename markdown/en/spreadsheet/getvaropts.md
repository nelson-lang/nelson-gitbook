# getvaropts

Get variable import options for selected variables.

## 📝 Syntax

- value = getvaropts(opts, selection)

## 📥 Input argument

- opts - an import options object (delimited text or spreadsheet).
- selection - variable names (character vector, string array or cell of character vectors) or numeric indices.

## 📤 Output argument

- value - a structure array with the per-variable options of the selected variables.

## 📄 Description


<b>getvaropts</b> returns the per-variable import options of the selected variables of an import options object.

## 💡 Example



```matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["date", "value"];
opts.VariableTypes = ["datetime", "double"];
opts = setvaropts(opts, "date", 'InputFormat', 'MM/dd/yy');
getvaropts(opts, "date")
```


## 🔗 See also

[setvaropts](../spreadsheet/setvaropts.md), [setvartype](../spreadsheet/setvartype.md), [delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
