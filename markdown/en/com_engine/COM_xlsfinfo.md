# COM_xlsfinfo

Determines if file contains Microsoft Excel spreadsheet.

## 📝 Syntax

- status = xlsfinfo(filename)
- [status, sheets] = xlsfinfo(filename)
- [status, sheets, xlsformat] = xlsfinfo(filename)

## 📥 Input argument

- filename - a string: a filename.

## 📤 Output argument

- status - a string: file type
- sheets - a vector of strings: sheet names
- xlsformat - a string: excel file format

## 📄 Description

Query Excel spreadsheet file filename for some information about its contents.

## 💡 Example

```matlab
[status, sheets, xlsformat] =COM_xlsfinfo([modulepath('com_engine'), '/examples/sample_xslx.xlsx'])
```

## 🔗 See also

[COM_xlswrite](../com_engine/COM_xlswrite.md), [COM_xlsread](../com_engine/COM_xlsread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
