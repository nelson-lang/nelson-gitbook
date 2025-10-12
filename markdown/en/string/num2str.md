# num2str

Converts numbers to character array.

## Syntax

- S = num2str(A)
- S = num2str(A, precision)
- S = num2str(A, formatSpec)

## Input argument

- A - a numerical matrix or logical.
- precision - an positive integer value: Maximum number of significant digits.
- formatSpec - a character array: Format of output fields.

## Output argument

- S - a character array: text representation of input array.

## Description

<p>
            num2str converts numbers to character array.</p>

<p>
                num2str trims any leading spaces from a character array. For better control over the results, use sprintf.</p>

## Example

```matlab
R = num2str(pi, 4)
R = num2str(magic(3))
```

## See also

[int2str](../string/int2str.md), [sprintf](../string/sprintf.md), [mat2str](../string/mat2str.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
