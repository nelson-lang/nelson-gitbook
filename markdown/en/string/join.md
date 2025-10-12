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

<p>
            res = join(str) combines the elements of str into a single text by joining them with a space character as the default delimiter.</p>

<p>The input, str, can be either a string array or a cell array of character vectors. The output, res, has the same data type as str.</p>

<p>If str is a 1-by-N or N-by-1 string array or cell array, res will be a string scalar or a cell array containing a single character vector.</p>

<p>If str is an M-by-N string array or cell array, res will be an M-by-1 string array or cell array.</p>

<p>For arrays of any size, join concatenates elements along the last dimension with a size greater than 1.</p>

<p>
                res = join(str, delimiter) joins the elements of str using the specified delimiter instead of the default space character.</p>

<p>If delimiter is an array of multiple delimiters, and str has N elements along the joining dimension, delimiter must have N–1 elements along the same dimension. All other dimensions of delimiter must either have size 1 or match the size of the corresponding dimensions of str.</p>

<p>
                    res = join(str, dim) combines the elements of str along the specified dimension dim.</p>

<p>
                        res = join(str, delimiter, dim) joins the elements of str along the specified dimension dim, using delimiter to separate them.</p>

## Example

```matlab
str = ["x","y","z"; "a","b","c"];
delimiters = [" + "," = "; " - "," = "];
R = join(str, delimiters)
```

## See also

[append](../string/append.md), [strcat](../string/strcat.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
