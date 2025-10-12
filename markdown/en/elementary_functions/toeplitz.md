# toeplitz

Toeplitz matrix

## Syntax

- T = toeplitz(c, r)
- T = toeplitz(r)

## Input argument

- c - a scalar or vector: column of Toeplitz matrix.
- r - a scalar or vector: row of Toeplitz matrix.

## Output argument

- T - Toeplitz matrix.

## Description

<p>
            T = toeplitz(c, r) returns the Toeplitz matrix whose first row is r and first column is c.</p>

<p>
                T = toeplitz(c) returns the symmetric Toeplitz matrix.</p>

## Bibliography

https://en.wikipedia.org/wiki/Toeplitz_matrix

## Example

```matlab
T = toeplitz(1:5, 1:2:7)
```

## See also

[hankel](../elementary_functions/hankel.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
