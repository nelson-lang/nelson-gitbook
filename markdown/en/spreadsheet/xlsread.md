# xlsread

Read data from an Open XML spreadsheet file.

## 📝 Syntax

- num = xlsread(filename)
- num = xlsread(filename, sheet)
- num = xlsread(filename, sheet, range)
- [num, txt, raw] = xlsread(...)

## 📥 Input argument

- filename - a string: .xlsx file name.
- sheet - a string sheet name or a positive sheet index.
- range - a string range in A1 notation, such as 'A1' or 'A1:C4'.

## 📤 Output argument

- num - numeric matrix. Text cells are returned as NaN.
- txt - cell array containing text values.
- raw - cell array containing imported cell values.

## 📄 Description

<b>xlsread</b> imports data from .xlsx files using the Open XML backend.

Other workbook formats, remote URLs, and interactive application automation are not supported by this backend.

## 💡 Example

Read numeric data from a named sheet and range.

```matlab
filename = [tempdir(), 'xlsread_example.xlsx']; xlswrite(filename, [1 2; 3 4], 'Data', 'B2'); [num, txt, raw] = xlsread(filename, 'Data', 'B2:C3')
```

## 🔗 See also

[xlswrite](../spreadsheet/xlswrite.md), [xlsfinfo](../spreadsheet/xlsfinfo.md), [readmatrix](../spreadsheet/readmatrix.md), [readcell](../spreadsheet/readcell.md).

## 🕔 History

| Version | 📄 Description                |
| ------- | ----------------------------- |
| 2.0.0   | Open XML .xlsx support added. |

<!--
## 👤 Author

Allan CORNET
-->
