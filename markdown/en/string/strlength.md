# strlength

Length of strings in cell of strings or string array.

## Syntax

- len = strlength(ce)

## Input argument

- ce - a string, string array or cell of strings.

## Output argument

- len - a matrix of integer values: length of strings.

## Description

<b>strlength</b>returns length of strings.

## Example

```matlab

str = 'To make a mountain out of a molehill';
k = strlength(str)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
k = strlength(A)

B = ["Nel", NaN, "son"; "is", "open", "source"];
k = strlength(B)

```

## See also

[strcmp](../string/strcmp.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
