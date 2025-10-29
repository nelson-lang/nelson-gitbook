# writematrix

Write a matrix to a file.

## 📝 Syntax

- writematrix(M)
- writematrix(M, filename)
- writematrix(..., Name, Value)

## 📥 Input argument

- M - an numeric or logical matrix.
- filename - a string: filename destination.
- Name, Value - Name-Value Arguments

## 📄 Description

<b>writematrix</b> writes an numeric matrix to an CSV format file.

<b>writematrix</b> does not support sparse matrices.

<b>writematrix</b> outputs numeric data in the long G format.

Available Name-Value Arguments

Name-value pairs must follow all other arguments.

The order of name-value pairs doesn't matter

Delimiter and QuoteStrings options only apply to delimited text files.

<b>FileType</b>: Specifies the type of output file

Syntax: <b>'FileType','text'</b>

Supports delimited text files (.txt, .dat, .csv)

<b>WriteMode</b>: Controls how data is written to the file

Syntax: <b>'WriteMode', mode</b>

Options:

'overwrite' (default) - Creates new file or replaces existing content

'append' - Adds data to end of existing file

If the target file doesn't exist, a new file will be created regardless of mode.

<b>Delimiter</b>: Defines the character used to separate fields

Syntax: <b>'Delimiter', delimiter</b>

Available Delimiters: Only applicable for delimited text files.

<b>QuoteStrings</b>: Controls text quoting behavior (Only applicable for delimited text files).

<b>'QuoteStrings', option</b>

with <b>options</b>

<b>'minimal'</b> (default) Quotes only text containing delimiters, line endings, or quotes.

<b>'all'</b> Quotes all text variables.

<b>'none'</b> Uses no quotes.

## 💡 Example

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'writematrix_example.csv'];
writematrix(A, filename);
R = fileread(filename)

```

## 🔗 See also

[readcell](../spreadsheet/readcell.md), [csvwrite](../spreadsheet/csvwrite.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.10.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
