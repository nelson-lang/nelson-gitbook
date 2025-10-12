# max

Maximum elements of an array.

## Syntax

- M = max(A)
- [M, I] = max(A)
- M = max(A, [], dim)
- [M, I] = max(A, [], dim)
- M = max(A, [], dim, 'omitnan')
- [M, I] = max(A, [], dim, 'includenan')
- [M, I] = max(A, [], 'all')
- [M, I] = max(A, [], 'all', 'omitnan')
- [M, I] = max(A, [], 'all', 'includenan')
- C = max(A, B)
- C = max(A, B, 'omitnan')
- C = max(A, B, 'includenan')

## Input argument

- A - a variable
- dim - a positive integer scalar (Dimension to operate along)
- 'omitnan' - ignore all NaN values. default behaviour. max will return the first element, if all elements are NaN.
- 'includenan' - include the NaN values.
- 'all' - it finds the maximum over all elements.

## Output argument

- M - Maximum values of A.
- I - Index to maximum values of A.
- C - Maximum elements from A or B.

## Description

<p>
            max find maximum values in an array.</p>

<p>If A is a matrix then M = max(A) is a row vector containing the maximum value of each column.</p>

<p>If A is a vector then M = max(A) will return the maximum of A.</p>

<p>If A If A is complex number then M = max(A) will return founded complex number with the largest magnitude.</p>

## Example

```matlab
A = [1 2 3; 4 5 6];
M = max(A)
M = max(A, [], 'all')
```

## See also

[min](../data_analysis/min.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
