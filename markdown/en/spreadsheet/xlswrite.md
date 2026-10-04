# xlswrite

Write data to an Open XML spreadsheet file.

## 📝 Syntax

- status = xlswrite(filename, A)
- status = xlswrite(filename, A, sheet)
- status = xlswrite(filename, A, sheet, range)
- [status, message] = xlswrite(...)

## 📥 Input argument

- filename - a string: .xlsx file name.
- A - array, cell array, table, or timetable to write.
- sheet - a string sheet name or a positive sheet index.
- range - a string start cell or range in A1 notation.

## 📤 Output argument

- status - logical value indicating whether the write succeeded.
- message - empty string on success, or the error message on failure.

## 📄 Description

<b>xlswrite</b> writes supported Nelson values to .xlsx files using the Open XML backend.

Complex arrays and object values are rejected because they do not map directly to workbook cells.

## 💡 Example

Write a matrix and read it back.

```matlab
filename = [tempdir(), 'xlswrite_example.xlsx']; [status, message] = xlswrite(filename, magic(3), 'Data', 'A1'); values = xlsread(filename, 'Data', 'A1:C3')
```

## 🔗 See also

[xlsread](../spreadsheet/xlsread.md), [xlsfinfo](../spreadsheet/xlsfinfo.md), [writematrix](../spreadsheet/writematrix.md), [writecell](../spreadsheet/writecell.md).

## 🕔 History

| Version | 📄 Description                |
| ------- | ----------------------------- |
| 2.0.0   | Open XML .xlsx support added. |

<!--
## 👤 Author

Allan CORNET
-->
