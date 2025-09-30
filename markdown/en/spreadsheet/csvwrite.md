# csvwrite

Write comma-separated value file.

## Syntax

- csvwrite(filename, M)
- csvwrite(filename, M, r, c)

## Input argument

- filename - a string: filename destination.
- M - an numeric or logical matrix.
- r, c - integer: offset. default : 0, 0

## Description

<p>
            <b>csvwrite</b> writes an numeric matrix to an CSV format file.</p>

## Example

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmwrite_example.csv'];
csvwrite(filename, A);
R = csvread(filename)
A = eye(3, 2);
csvwrite(filename, A);
R = fileread(filename)

```

## See also

[csvread](../spreadsheet/csvread.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
