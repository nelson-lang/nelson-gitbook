# hilb

Hilbert matrix

## Syntax

- h = invhilb(n)
- h = invhilb(n, className)

## Input argument

- n - a scalar, nonnegative integer.
- className - 'single' or 'double' (default).

## Output argument

- h - Hilbert matrix.

## Description

<p>
            hilb computes the exact inverse of the exact Hilbert matrix.</p>

## Bibliography

https://en.wikipedia.org/wiki/David_Hilbert, and Thanks to https://nhigham.com/2020/06/30/what-is-the-hilbert-matrix/

## Example

```matlab
h = invhilb(5)
```

## See also

[hilb](../elementary_functions/hilb.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
