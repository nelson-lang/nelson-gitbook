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

  <p><b>max</b> find maximum values in an array.</p>
  <p>If <b>A</b> is a matrix then <b>M = max(A)</b> is a row vector containing the maximum value of each column.</p>
  <p>If <b>A</b> is a vector then <b>M = max(A)</b> will return the maximum of <b>A</b>.</p>
  <p>If <b>A</b> If A is complex number then <b>M = max(A)</b> will return founded complex number with the largest magnitude.</p>

## Example

```matlab
A = [1 2 3; 4 5 6];
M = max(A)
M = max(A, [], 'all')
```

## See also

[min](min.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
