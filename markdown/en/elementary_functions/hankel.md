# hankel

Hankel matrix

## Syntax

- H = hankel(c)
- H = hankel(c, r)

## Input argument

- c - First column of Hankel matrix: vector or scalar.
- r - Last row of Hankel matrix: vector or scalar.

## Output argument

- H - Hankel Matrix.

## Description

<p>
            H = hankel(c) returns a square Hankel Matrix with c the first column of the matrix and the elements are zero below the main anti-diagonal.</p>

<p>
                H = hankel(c, r) returns a Hankel matrix with c as its first column and r as its last row.</p>

<p>If last element of c differs from the first element of r, then Hankel issues a warning and uses the last element of c for the anti-diagonal.</p>

## Example

```matlab
c = [1 2 3 4 5];
hankel(c)
```

## See also

[hilb](../elementary_functions/hilb.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
