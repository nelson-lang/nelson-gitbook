# find

Find Non-zero Elements

## Syntax

- K = find(M)
- [R, C] = find(M)
- [R, C, V] = find(M)
- K = find(M, N)
- [R, C] = find(M, N)
- [R, C, V] = find(M, N)
- K = find(M, N, D)
- [R, C] = find(M, N, D)
- [R, C, V] = find(M, N, D)

## Input argument

- M - a scalar, vector, matrix, or multidimensional array.
- N - positive integer scalar value: number of nonzeros to find.
- D - direction: 'first' (default) or 'last'.

## Output argument

- K - indices to nonzero elements (vector).
- R - row subscripts (vector).
- C - column subscripts (vector).
- V - nonzero elements of M (vector).

## Description

<p>
            <b>K = find(M)</b> returns a vector with the linear indices of each nonzero element of <b>M</b>.</p>

## Example

```matlab
M = rand(4, 3, 5);
[R, C, V] = find(M > 0.9)
M(R(1),C(1),V(1))
```

## See also

[strfind](../string/strfind.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
