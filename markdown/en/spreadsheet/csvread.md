# csvread

Read comma-separated value (CSV) file.

## 📝 Syntax

- M = csvread(filename)
- M = csvread(filename, R1, C1)
- M = csvread(filename, R1, C1, [R1 C1 R2 C2])

## 📥 Input argument

- filename - a string: filename source.
- R1, C1 - nonnegative integer: offset. default : 0, 0
- [R1 C1 R2 C2] - nonnegative integer: Starting row offset, starting column offset, ending row offset and ending column offset.

## 📤 Output argument

- M - a double matrix.

## 📄 Description

<b>M = csvread(filename, R1, C1, [R1 C1 R2 C2])</b> reads only the data within the range specified by row offsets <b>R1</b> to <b>R2</b> and column offsets <b>C1</b> to <b>C2</b>.

<b>M = csvread(filename, R1, C1)</b> starts reading data at the row and column offsets specified by <b>R1</b> and <b>C1</b>. For example, R1=0, C1=0 indicates the first value in the file.

To set row and column offsets without defining a delimiter, use an empty character as a placeholder, like <b>M = csvread(filename, 3, 1)</b>.

<b>M = csvread(filename)</b> read a comma-separated value (CSV) formatted file into matrix <b>M</b>.

Complex Number Importing: <b>csvread</b> reads each complex number as a single unit, storing it in a complex numeric field.

Valid forms for complex numbers are:

| Form:           | Example: |
| --------------- | -------- | ----------- |
| ±<real>±<imag>i | j        | 3.1347-2.1i |
| ±<imag>i        | j        | -2.1j       |

<b>Note</b>: Whitespace within a complex number is not allowed; <b>csvread</b> interprets any embedded spaces as field delimiters.

## 💡 Example

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'csvread_example.csv'];
csvwrite(filename, A);
R = csvread(filename)
```

## 🔗 See also

[csvwrite](../spreadsheet/csvwrite.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.10.0  | initial version |

## 👤 Author

Allan CORNET
