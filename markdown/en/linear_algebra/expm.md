# expm

Computes the matrix exponential of a square matrix.

## Syntax

- res = expm(x)

## Input argument

- x - a numeric value: scalar or square matrix (double or single)

## Output argument

- res - a numeric value: a square matrix

## Description

<p>
            <b>expm(x)</b> computes the matrix exponential of x.</p>
<p>The computation is performed by first block-diagonalizing x and then applying a Pade approximation on each block.</p>

## Example

```matlab
A = eye(3, 3);
res = expm(A)
res = expm(A+i)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
