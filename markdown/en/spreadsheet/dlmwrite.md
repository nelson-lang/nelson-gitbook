# dlmwrite

Write an numeric matrix to a text file file using a delimiter.

## 📝 Syntax

- dlmwrite(filename, M)
- dlmwrite(filename, M, delimiter)
- dlmwrite(filename, M, '-append')
- dlmwrite(filename, M, '-append', delimiter)
- dlmwrite(filename, M, delimiter, r, c)
- dlmwrite(filename, M, '-append', delimiter, r, c)
- dlmwrite(filename, M, delimiter, r, c, eol)
- dlmwrite(filename, M, '-append', delimiter, r, c, eol)
- dlmwrite(filename, M, delimiter, r, c, eol, precision)
- dlmwrite(filename, M, '-append', delimiter, r, c, eol, precision)

## 📥 Input argument

- filename - a string: filename destination.
- M - an numeric or logical matrix.
- delimiter - a string: ',' , '\\t', ';' delimiter. default ','
- r, c - integer: offset. default : 0, 0
- eol - a string: 'pc' or 'unix'.
- precision - a integer or C format string. (default: 5)

## 📄 Description

<b>dlmwrite</b> writes an numeric matrix to an ASCII format file.

## 💡 Example

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmwrite_example.csv'];
dlmwrite(filename, A);
R = dlmread(filename)
A = eye(3, 2);
dlmwrite(filename, A, ';', 4, 5);
R = fileread(filename)

```

## 🔗 See also

[dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
