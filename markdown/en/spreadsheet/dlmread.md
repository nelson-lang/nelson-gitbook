# dlmread

Read an numeric matrix from a text file file using a delimiter.

## Syntax

- M = dlmread(filename)
- M = dlmread(filename, delimiter)
- M = dlmread(filename, delimiter, R1, C1)
- M = dlmread(filename, delimiter, [R1 C1 R2 C2])

## Input argument

- filename - a string: filename source.
- delimiter - a string: ',' , '\t', ';' delimiter. default ','
- R1, C1 - nonnegative integer: offset. default : 0, 0
- [R1 C1 R2 C2] - nonnegative integer: Starting row offset, starting column offset, ending row offset and ending column offset.

## Output argument

- M - a double matrix.

## Description

  <p><b>M = dlmread(filename, delimiter, [R1 C1 R2 C2])</b> reads only the data within the range specified by row offsets <b>R1</b> to <b>R2</b> and column offsets <b>C1</b> to <b>C2</b>. Alternatively, you can specify the range using spreadsheet notation, such as 'A1..B6' instead of <b>[0 0 5 1]</b>.</p>
  <p><b>M = dlmread(filename, delimiter, R1, C1)</b> starts reading data at the row and column offsets specified by <b>R1</b> and <b>C1</b>. For example, R1=0, C1=0 indicates the first value in the file.</p>
  <p>To set row and column offsets without defining a delimiter, use an empty character as a placeholder, like <b>M = dlmread(filename, '', 3, 1)</b>.</p>
  <p><b>M = dlmread(filename, delimiter)</b> reads data from the file using the specified delimiter and treats repeated delimiter characters as separate delimiters.</p>
  <p><b>M = dlmread(filename)</b> reads a numeric data file in ASCII-delimited format into matrix <b>M</b>. The dlmread function automatically detects the delimiter from the file and consolidates consecutive white spaces into a single delimiter.</p>
  <p>Complex Number Importing: <b>dlmread</b> reads each complex number as a single unit, storing it in a complex numeric field.</p>
  <p>Valid forms for complex numbers are:</p>
  <p/>
  <table style="width:100%">
    <tr>
      <th>Form:</th>
      <th>Example:</th>
    </tr>
    <tr>
      <td>±&lt;real&gt;±&lt;imag&gt;i|j</td>
      <td>3.1347-2.1i</td>
    </tr>
    <tr>
      <td>±&lt;imag&gt;i|j</td>
      <td>-2.1j</td>
    </tr>
  </table>
  <p><b>Note</b>: Whitespace within a complex number is not allowed; <b>dlmread</b> interprets any embedded spaces as field delimiters.</p>

## Examples

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmread_example.csv'];
dlmwrite(filename, A);
R = dlmread(filename)
```

Read a CSV file with a header

```matlab
filename = [tempdir(), 'dlmread_example.csv'];
filewrite(filename, ['A,B,C,D,E,F',char(10)]);
A = magic(6);
dlmwrite(filename, A, '-append');
fileread(filename)

R = dlmread(filename, '', 1, 0)
```

## See also

[dlmwrite](dlmwrite.md), [fileread](../stream_manager/fileread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
