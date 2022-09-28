# hadamard

Hadamard matrix

## Syntax

- H = hadamard(n)
- H = hadamard(n, classname)

## Input argument

- n - scalar integer value: order.
- classname - row character vector or scalar string: class name desired ('double' by default).

## Output argument

- H - Hadamard Matrix.

## Description

  <p><b>H = hadamard(n)</b> returns the Hadamard Matrix of order <b>n</b>.</p>

Bibliography

https://en.wikipedia.org/wiki/Hadamard_matrix , https://mathworld.wolfram.com/HadamardMatrix.html

## Example

```matlab
H = hadamard(4)
```

## See also

[hankel](hankel.md), [toeplitz](toeplitz.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
