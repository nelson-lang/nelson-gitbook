# planerot

Givens plane rotation.

## Syntax

- [G, Y] = planerot(X)

## Input argument

- X - two-element column vector.

## Output argument

- G - 2 by 2 orthogonal matrix.
- Y - Y = G \* X with Y(2) = 0.

## Description

  <p><b>[G, Y] = planerot(X)</b> computes the Givens rotation matrix for the two-element column vector <b>X</b>.</p>

## Example

```matlab
X = [4; 5];
[G, X] = planerot(X)
```

## See also

[norm](norm.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
