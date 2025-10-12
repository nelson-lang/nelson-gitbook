# subspace

Angle between two subspaces.

## Syntax

- T = subspace(A, B)

## Input argument

- A - vector or matrix (real or single)
- B - vector or matrix (real or single)

## Output argument

- T - scalar: angle.

## Description

<p>
            T = subspace(A, B) finds the angle between two subspaces specified by the columns of A and B.</p>

## Example

```matlab
M = [1   1   1   1   1   1   1   1;
1  -1   1  -1   1  -1   1  -1;
1   1  -1  -1   1   1  -1  -1;
1  -1  -1   1   1  -1  -1   1;
1   1   1   1  -1  -1  -1  -1;
1  -1   1  -1  -1   1  -1   1;
1   1  -1  -1  -1  -1   1   1;
1  -1  -1   1  -1   1   1  -1];
A = M(:, 2:4);
B = M(:, 5:8);
R = subspace(A, B)

```

## See also

[orth](../linear_algebra/orth.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
