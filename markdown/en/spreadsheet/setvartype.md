# setvartype

Set variable data types for selected variables.

## 📝 Syntax

- opts = setvartype(opts, selection, types)

## 📥 Input argument

- opts - an import options object (delimited text or spreadsheet).
- selection - variable names (character vector, string array or cell of character vectors) or numeric indices.
- types - a single type applied to all selected variables, or one type per selected variable.

## 📤 Output argument

- opts - the updated import options object.

## 📄 Description


<b>setvartype</b> sets the data types of the selected variables of an import options object, updating both <b>VariableTypes</b> and the per-variable options.

## 💡 Example



```matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["id", "value"];
opts = setvartype(opts, ["id", "value"], 'double')
```


## 🔗 See also

[setvaropts](../spreadsheet/setvaropts.md), [getvaropts](../spreadsheet/getvaropts.md), [delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
