# join

Combine strings.

## Syntax

- res = join(str)
- res = join(str, delimiter)
- res = join(str, dim)
- res = join(str, delimiter, dim)

## Input argument

- str - a string, string array or cell of strings.
- delimiter - a string, string array or cell of strings:Characters used to separate and join strings.
- dim - positive integer: Dimension along which to join strings.

## Output argument

- res - a string, string array or cell of strings.

## Description

  <p><b>res = join(str)</b> combines the elements of <b>str</b> into a single text by joining them with a space character as the default delimiter.</p>
  <p>The input, <b>str</b>, can be either a string array or a cell array of character vectors. The output, <b>res</b>, has the same data type as <b>str</b>.</p>
  <p>If <b>str</b> is a 1-by-N or N-by-1 string array or cell array, <b>res</b> will be a string scalar or a cell array containing a single character vector.</p>
  <p>If <b>str</b> is an M-by-N string array or cell array, res will be an M-by-1 string array or cell array.</p>
  <p>For arrays of any size, join concatenates elements along the last dimension with a size greater than 1.</p>
  <p><b>res = join(str, delimiter)</b> joins the elements of <b>str</b> using the specified delimiter instead of the default space character.</p>
  <p>If delimiter is an array of multiple delimiters, and <b>str</b> has N elements along the joining dimension, delimiter must have N–1 elements along the same dimension. All other dimensions of delimiter must either have size 1 or match the size of the corresponding dimensions of <b>str</b>.</p>
  <p><b>res = join(str, dim)</b> combines the elements of <b>str</b> along the specified dimension <b>dim</b>.</p>
  <p><b>res = join(str, delimiter, dim)</b> joins the elements of <b>str</b> along the specified dimension <b>dim</b>, using delimiter to separate them.</p>

## Example

```matlab
str = ["x","y","z"; "a","b","c"];
delimiters = [" + "," = "; " - "," = "];
R = join(str, delimiters)
```

## See also

[append](append.md), [strcat](strcat.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
