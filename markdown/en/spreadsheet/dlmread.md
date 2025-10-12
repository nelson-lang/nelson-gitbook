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

<p>
            M = dlmread(filename, delimiter, [R1 C1 R2 C2]) reads only the data within the range specified by row offsets R1 to R2 and column offsets C1 to C2. Alternatively, you can specify the range using spreadsheet notation, such as 'A1..B6' instead of [0 0 5 1].</p>

<p>
                M = dlmread(filename, delimiter, R1, C1) starts reading data at the row and column offsets specified by R1 and C1. For example, R1=0, C1=0 indicates the first value in the file.</p>

<p>To set row and column offsets without defining a delimiter, use an empty character as a placeholder, like M = dlmread(filename, '', 3, 1).</p>

<p>
                    M = dlmread(filename, delimiter) reads data from the file using the specified delimiter and treats repeated delimiter characters as separate delimiters.</p>

<p>
                        M = dlmread(filename) reads a numeric data file in ASCII-delimited format into matrix M. The dlmread function automatically detects the delimiter from the file and consolidates consecutive white spaces into a single delimiter.</p>

<p>Complex Number Importing: dlmread reads each complex number as a single unit, storing it in a complex numeric field.</p>

<p>Valid forms for complex numbers are:</p>

<p></p>

| Form:           | Example: |
| --------------- | -------- | ----------- |
| ±<real>±<imag>i | j        | 3.1347-2.1i |
| ±<imag>i        | j        | -2.1j       |

<p>
                            Note: Whitespace within a complex number is not allowed; dlmread interprets any embedded spaces as field delimiters.</p>

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

[dlmwrite](../spreadsheet/dlmwrite.md), [fileread](../stream_manager/fileread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
