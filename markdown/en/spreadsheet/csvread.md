# csvread

Read comma-separated value (CSV) file.

## Syntax

- M = csvread(filename)
- M = csvread(filename, R1, C1)
- M = csvread(filename, R1, C1, [R1 C1 R2 C2])

## Input argument

- filename - a string: filename source.
- R1, C1 - nonnegative integer: offset. default : 0, 0
- [R1 C1 R2 C2] - nonnegative integer: Starting row offset, starting column offset, ending row offset and ending column offset.

## Output argument

- M - a double matrix.

## Description

<p>
            M = csvread(filename, R1, C1, [R1 C1 R2 C2]) reads only the data within the range specified by row offsets R1 to R2 and column offsets C1 to C2.</p>

<p>
                M = csvread(filename, R1, C1) starts reading data at the row and column offsets specified by R1 and C1. For example, R1=0, C1=0 indicates the first value in the file.</p>

<p>To set row and column offsets without defining a delimiter, use an empty character as a placeholder, like M = csvread(filename, 3, 1).</p>

<p>
                    M = csvread(filename) read a comma-separated value (CSV) formatted file into matrix M.</p>

<p>Complex Number Importing: csvread reads each complex number as a single unit, storing it in a complex numeric field.</p>

<p>Valid forms for complex numbers are:</p>

<p></p>

| Form:           | Example: |
| --------------- | -------- | ----------- |
| ±<real>±<imag>i | j        | 3.1347-2.1i |
| ±<imag>i        | j        | -2.1j       |

<p>
                        Note: Whitespace within a complex number is not allowed; csvread interprets any embedded spaces as field delimiters.</p>

## Example

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'csvread_example.csv'];
csvwrite(filename, A);
R = csvread(filename)
```

## See also

[csvwrite](../spreadsheet/csvwrite.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
