# det

Matrix determinant.

## Syntax

- res = det(x)

## Input argument

- x - a numeric value: scalar or square matrix (double or single)

## Output argument

- res - real or complex number (double or single), the determinant base 10.

## Description

<p>
            res = det(x) returns the determinant of square matrix x.
        </p>

<p>For a</p>

$$2 \times 2$$

<p>matrix:</p>

$$\det\begin{pmatrix} a & b \\ c & d \end{pmatrix} = ad - bc$$

<p>For larger matrices, the determinant can be computed using cofactor expansion:</p>

$$\det(A) = \sum_{j=1}^{n} (-1)^{i+j} a_{ij} M_{ij}$$

<p>where</p>

$$M_{ij}$$

<p>is the minor of element</p>

$$a_{ij}$$

## Example

```matlab
A = [10 -20 40; -50 20 0; 10 0 30]
D = det(A)

```

## See also

[rcond](../linear_algebra/rcond.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
