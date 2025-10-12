# min

Minimum elements of an array.

## Syntax

- M = min(A)
- [M, I] = min(A)
- M = min(A, [], dim)
- [M, I] = min(A, [], dim)
- M = min(A, [], dim, 'omitnan')
- [M, I] = min(A, [], dim, 'includenan')
- [M, I] = min(A, [], 'all')
- [M, I] = min(A, [], 'all', 'omitnan')
- [M, I] = min(A, [], 'all', 'includenan')
- C = min(A, B)
- C = min(A, B, 'omitnan')
- C = min(A, B, 'includenan')

## Input argument

- A - a variable
- dim - a positive integer scalar (Dimension to operate along)
- 'omitnan' - ignore all NaN values. default behaviour. min will return the first element, if all elements are NaN.
- 'includenan' - include the NaN values.
- 'all' - it finds the minimum over all elements.

## Output argument

- M - minimum values of A.
- I - Index to minimum values of A.
- C - minimum elements from A or B.

## Description

<p>
            min find minimum values in an array.</p>

<p>If A is a matrix then M = min(A) is a row vector containing the minimum value of each column.</p>

<p>If A is a vector then M = min(A) will return the minimum of A.</p>

<p>If A If A is complex number then M = min(A) will return founded complex number with the largest magnitude.</p>

## Example

```matlab
A = [1 2 3; 4 5 6];
M = min(A)
M = min(A, [], 'all')
```

## See also

[max](../data_analysis/max.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
